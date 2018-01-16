
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_moverton3/version"

Gem::Specification.new do |spec|
  spec.name          = "str_moverton3"
  spec.version       = StrMoverton3::VERSION
  spec.authors       = ["Mallory Overton"]
  spec.email         = ["malloryoverton3@gmail.com"]

  spec.summary       = "Learning about gems"
  spec.description   = "Learning how to publish a gem"
  spec.homepage      = ""
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
