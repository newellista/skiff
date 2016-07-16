# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skiff/version'

Gem::Specification.new do |spec|
  spec.name          = "skiff"
  spec.version       = Skiff::VERSION
  spec.authors       = ["Steve Newell"]
  spec.email         = ["newellista@gmail.com"]

  spec.summary       = %q{DS18b20 One-Wire temperature probe reader}
  spec.description   = %q{DS18b20 One-Wire temperature probe reader.}
  spec.homepage      = "https://github.com/newellista/skiff"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
