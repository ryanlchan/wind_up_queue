# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wind_up/version'

Gem::Specification.new do |gem|
  gem.name          = "wind_up_queue"
  gem.version       = WindUp::Queue::VERSION
  gem.authors       = ["Ryan Chan"]
  gem.email         = ["ryan@ryanlchan.com"]
  gem.summary       = %q{Akka style message routing pools in Celluloid}
  gem.description   = %q{WindUp is drop-in replacement for Celluloid pools using the message API}
  gem.homepage      = "https://github.com/ryanlchan/wind_up_queue"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"

  gem.add_dependency "celluloid", "~> 0.14.1"
end
