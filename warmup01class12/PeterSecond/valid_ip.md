# Valid IP?

Write a method that takes a string as input. It should return true if
the input is a valid IPv4 address (ie. anything between `0.0.0.0` and
`255.255.255.255` is valid).

```ruby
valid_ip?("255.255.255.255")
=> true

valid_ip?("999.25.55.25")
=> false
```