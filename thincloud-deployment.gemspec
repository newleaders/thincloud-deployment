# -*- encoding: utf-8 -*-

require File.expand_path("../lib/thincloud/deployment/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "thincloud-deployment"
  gem.version       = Thincloud::Deployment::VERSION
  gem.authors       = ["Phil Cohen", "Don Morrison", "Sean Williamson"]
  gem.email         = ["pcohen@newleaders.com", "dmorrison@newleaders.com",
                       "swilliamson@newleaders.com"]
  gem.description   = "Opinionated framework dependencies, configuration, " <<
                      "and recipes for Capistrano-based deployments. "
  gem.summary       = "Opinionated framework dependencies, configuration, " <<
                      "and recipes for Capistrano-based deployments. "
  gem.homepage      = "http://newleaders.github.com/thincloud-deployment"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.add_dependency "capistrano",                   "~> 2.14.1"
  gem.add_dependency "capistrano-fast_remote_cache", "~> 1.0.0"
  gem.add_dependency "flowdock",                     "~> 0.3.0"
  gem.add_dependency "grit",                         "~> 2.5.0"
  gem.add_dependency "rvm-capistrano",               "~> 1.2.7"

  gem.add_development_dependency "bundler", "~> 1.2"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rubygems-tasks", "~> 0.2"
  gem.add_development_dependency "yard", "~> 0.8"
  gem.add_development_dependency "thincloud-test"
end
