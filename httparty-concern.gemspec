Gem::Specification.new do |gem|
  gem.name          = 'httparty-concern'
  gem.version       = '0.1.0'
  gem.authors       = 'Mario Uher'
  gem.email         = 'uher.mario@gmail.com'
  gem.description   = 'Allows HTTParty to work better with ActiveSupport::Concern.'
  gem.summary       = 'Concerned HTTParty.'
  gem.homepage      = 'http://haihappen.github.com/httparty-concern'

  gem.files         = `git ls-files`.split("\n")
  gem.require_path  = 'lib'

  gem.add_dependency 'activesupport', '~> 3.0'
  gem.add_dependency 'httparty'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'purdytest'
end