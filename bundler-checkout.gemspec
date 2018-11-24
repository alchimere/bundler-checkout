# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler/checkout/version'

Gem::Specification.new do |spec|
  spec.name          = 'bundler-checkout'
  spec.version       = Bundler::Checkout::VERSION
  spec.authors       = ['Yann Bertthou']
  spec.email         = ['firetonton@gmail.com']

  spec.summary       = 'A bundler plugin that modifies your Gemfile by branch checkout'
  spec.homepage      = 'https://github.com/alchimere/bundler-checkout'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rubocop', '~> 0.58'
  spec.add_development_dependency 'simplecov', '~> 0.15'
end
