# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foundation_icons/sass/version'

Gem::Specification.new do |spec|
  spec.name          = "foundation-icons-sass"
  spec.version       = FoundationIcons::Sass::VERSION
  spec.authors       = ["Jan Lindblom"]
  spec.email         = ["jan@janlindblom.se"]
  spec.summary       = %q{Foundation icon font for SASS.}
  spec.description   = %q{Foundation icon font for SASS.}
  spec.homepage      = "https://github.com/lilycode/foundation-icons-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'sass-rails'
  spec.add_development_dependency 'compass'
  spec.add_runtime_dependency 'sass', '~> 3'
end
