# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code4lib/vote/notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "code4lib-vote-notifier"
  spec.version       = Code4lib::Vote::Notifier::VERSION
  spec.authors       = ["Jason Ronallo"]
  spec.email         = ["jronallo@gmail.com"]
  spec.summary       = %q{Get desktop notifications for Code4Lib votes}
  spec.description   = %q{Get desktop notifications for Code4Lib votes}
  spec.homepage      = "https://github.com/jronallo/code4lib-vote-notifier"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httpclient"
  spec.add_dependency "json"
  spec.add_dependency "slop"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
