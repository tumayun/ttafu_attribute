$: << File.expand_path('../lib', __FILE__)
require 'ttafu_attribute/version'

Gem::Specification.new do |gem|
  gem.name          = 'ttafu_attribute'
  gem.version       = TtafuAttribute::VERSION
  gem.authors       = 'Tumayun'
  gem.email         = 'tumayun.2010@gmail.com'
  gem.homepage      = 'https://github.com/tumayun/ttafu_attribute'
  gem.summary       = 'ttafu_attribute.'
  gem.description   = 'Update the updated_at field when the specified fields has changed'
  gem.files         = Dir['lib/**/*.*']
  gem.require_path  = 'lib'
  gem.license       = 'MIT'
  gem.add_runtime_dependency 'activerecord', '~> 4.0', '>= 4.0.0'
  gem.add_runtime_dependency 'activesupport', '~> 4.0', '>= 4.0.0'
  gem.required_ruby_version = '>= 2.0.0'
end
