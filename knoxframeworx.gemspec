# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knoxframeworx/version'

Gem::Specification.new do |spec|
  spec.name          = "knoxframeworx"
  spec.version       = Knoxframeworx::VERSION
  spec.authors       = ["Jeff Knox"]
  spec.email         = ["knoxjeffrey@outlook.com"]
  spec.summary       = %q{Knox Frameworx}
  spec.description   = %q{My attempt at building my own framework based on Ruby and Rack}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_runtime_dependency "rack"
  
  spec.add_development_dependency "rspec"
end
