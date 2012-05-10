# httparty-concern

Allows HTTParty to work better with ActiveSupport::Concern.

## Before

```ruby
module MyAwesomeModule
  extend ActiveSupport::Concern
  include HTTParty
  
  included do
    base_uri 'http://www.google.com'
  end
end

# => NoMethodError: undefined method `base_uri' for #<Class:0x007f8b86d823b8>
```

## After

```ruby
module MyAwesomeModule
  extend ActiveSupport::Concern
  include HTTParty

  included do
    base_uri 'http://www.google.com'
  end
end

# => Nope, no NoMethodErrors at all! :)
```

## Installation

In your `Gemfile:

```ruby
  gem 'httparty-concern'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

(The MIT License)

Copyright (c) 2012 Mario Uher

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.