# Autodiscover
This is a little Sinatra application that mimics Microsoft's autodiscover protocol.

## Running the app
Just start the app with puma:

```ruby
bundle exec puma
```

## Resources
* http://msdn.microsoft.com/en-us/library/exchange/bb204153(v=exchg.140).aspx
* http://technet.microsoft.com/en-us/library/cc511507.aspx
* https://www.testexchangeconnectivity.com

## Local testing
Just some snippets that I am using for testing.

`req.xml`:

```xml
<Autodiscover xmlns="http://schemas.microsoft.com/exchange/autodiscover/outlook/requestschema/2006">
  <Request>
    <EMailAddress>me@example.com</EMailAddress>
    <AcceptableResponseSchema>http://schemas.microsoft.com/exchange/autodiscover/outlook/responseschema/2006a</AcceptableResponseSchema>
  </Request>
</Autodiscover>
```

```sh
curl -XPOST -d @req.xml --header "Content-Type:text/xml" localhost:9292/autodiscover/autodiscover.xml
```
