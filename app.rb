require 'bundler/setup'
Bundler.require

class Autodiscover < Sinatra::Base
  post %r{/autodiscover/autodiscover\.xml$}i do
    req = Nokogiri.parse request.body.read
    @login = req.xpath('//xmlns:EMailAddress').text
    @server = @login.split('@').last

    erb :autodiscover
  end
end
