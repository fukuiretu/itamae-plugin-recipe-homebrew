# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/homebrew/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-homebrew"
  spec.version       = Itamae::Plugin::Recipe::Homebrew::VERSION
  spec.authors       = ["fukuiretu"]
  spec.email         = ["s0232101@gmail.com"]
  spec.summary       = %q{Plugin to support the HomeBrew for Itamae}
  spec.description   = %q{Plugin to support the HomeBrew for Itamae}
  spec.homepage      = "https://github.com/fukuiretu/itamae-plugin-recipe-homebrew"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae", "~> 1.5"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
