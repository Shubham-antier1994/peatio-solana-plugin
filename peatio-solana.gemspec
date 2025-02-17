# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/peatio/solana/version"

Gem::Specification.new do |spec|
  spec.name          = "peatio-solana"
  spec.version       = Peatio::Solana::VERSION
  spec.authors       = ["Tushar"]
  spec.email         = ["tushar.bambah@antiersolutions.com"]

  spec.summary       = %q{Gem for extending Peatio plugable system with Solana implementation.}
  spec.description   = %q{Solana Peatio gem which implements Peatio::Blockchain::Abstract & Peatio::Wallet::Abstract.}
  spec.homepage      = "https://openware.com/"
  spec.license       = "MIT"

  # Include all files except test/spec/feature directories.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency 'activesupport', '>= 5.2.3', '< 8.0'
  spec.add_dependency "peatio", ">= 0.6.3"
  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "memoist", "~> 0.16.0"
  spec.add_dependency 'net-http-persistent', '~> 4.0.0'

  # Development dependencies
  spec.add_development_dependency "bundler", "~> 2.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "mocha", "~> 2.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "webmock", "~> 3.5"
end
