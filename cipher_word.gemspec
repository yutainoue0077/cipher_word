# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cipher_word/version'

Gem::Specification.new do |spec|
  spec.name          = "cipher_word"
  spec.version       = CipherWord::VERSION
  spec.authors       = ["yutainoue"]
  spec.email         = ["yutainoue009@gmail.com"]
  spec.summary       = %q{For decryption and encryption of the word}
  spec.description   = %q{For decryption and encryption of the word}
  spec.homepage      = "https://github.com/yutainoue0077/cipher_word"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
