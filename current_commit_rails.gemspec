# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'current_commit_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "current_commit_rails"
  spec.version       = CurrentCommitRails::VERSION
  spec.authors       = ["Wei Zeng"]
  spec.email         = ["gzzengwei@gmail.com"]
  spec.summary       = %q{Get current GIT commit info in Rails App}
  spec.description   = %q{Get current GIT commit info in Rails App}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rugged"  
end
