# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bvm/version'

Gem::Specification.new do |spec|
  spec.name          = "bvm"
  spec.version       = BVM::VERSION
  spec.authors       = ["Samuel E. Giddins"]
  spec.email         = ["segiddins@segiddins.me"]

  spec.summary       = %q{The Bundler version manager}
  spec.homepage      = "https://github.com/segiddins/bvm"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
