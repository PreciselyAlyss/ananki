# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "anakhi/version"

Gem::Specification.new do |spec|
  spec.name          = "anakhi"
  spec.version       = Anakhi::VERSION
  spec.authors       = ["Alyss Noland"]
  spec.email         = ["alyss.noland@gmail.com"]

  spec.summary       = %q{TicTacToe Gem Project from Viking Code School}
  spec.description   = %q{TicTacToe Gem Project from Viking Code School}
  spec.homepage      = "https://github.com/PreciselyAlyss/ananki"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    # We modified this to point to Rubygems:
   spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
