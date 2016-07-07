# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/commit/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-commit"
  spec.version       = Capistrano::Commit::VERSION
  spec.authors       = ["Igor Gonchar"]
  spec.email         = ["igor.gonchar@gmail.com"]
  spec.summary       = %q{Save information about deployed revisions into database.}
  spec.homepage      = "https://github.com/gigorok/capistrano-commit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", ">= 3.2.0"
  spec.add_dependency "activerecord"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
