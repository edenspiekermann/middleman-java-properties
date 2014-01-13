# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-java-properties/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-java-properties"
  spec.version       = Middleman::JavaProperties::VERSION
  spec.authors       = ["Richard Bausek"]
  spec.email         = ["r.bausek@de.edenspiekermann.com"]
  spec.summary       = %q{Adds support for Java property files in Middleman}
  spec.description   = %q{Adds support for Java property files in Middleman}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("middleman-core")
  spec.add_runtime_dependency("java_properties")

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
