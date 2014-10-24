# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dft/version'

Gem::Specification.new do |spec|
  spec.name          = "dft"
  spec.version       = DFT::VERSION
  spec.authors       = ["hrkksm10"]
  spec.email         = ""
  spec.summary       = %q{DFT in C-Extensions}
  spec.description   = %q{DFT in C-Extensions}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.extensions    = %w[ext/dft/extconf.rb]

  spec.files         = Dir["ext/**/*"] + Dir["lib/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
