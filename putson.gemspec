# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'putson/version'

Gem::Specification.new do |spec|
  spec.name          = 'putson'
  spec.version       = Putson::VERSION
  spec.authors       = ['Jack Reed']
  spec.email         = ['phillipjreed@gmail.com']

  spec.summary       = 'A quick Ruby interface to put some JSON somewhere.'
  spec.description   = 'A quick Ruby interface to put some JSON somewhere.'
  spec.homepage      = 'https://github.com/mejackreed/putson'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
