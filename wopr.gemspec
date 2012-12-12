# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wopr/version'

Gem::Specification.new do |gem|
  gem.name          = "wopr"
  gem.version       = Wopr::VERSION
  gem.authors       = ["Rudy Jahchan"]
  gem.email         = ["rudy@carbonfive.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('sinatra')
  gem.add_dependency('twilio-ruby')
  gem.add_dependency('localtunnel')
  gem.add_dependency('builder')

  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rack-test')
  gem.add_development_dependency('thin')
  gem.add_development_dependency('nokogiri')
end