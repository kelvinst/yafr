# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yafr/version'

Gem::Specification.new do |spec|
  spec.name          = "yafr"
  spec.version       = Yafr::VERSION
  spec.authors       = ["Kelvin Raffael Stinghen"]
  spec.email         = ["kelvin.stinghen@gmail.com"]
  spec.description   = %q{Yet Another File Remover}
  spec.summary       = %q{A more user friendly command line tool to remove files.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["yafr"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "mercenary", "~> 0.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
