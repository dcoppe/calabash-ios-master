# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "calabash-cucumber/version"

Gem::Specification.new do |s|
  s.name        = "calabash-cucumber"
  s.version     = Calabash::Cucumber::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Karl Krukow"]
  s.email       = ["karl@lesspainful.com"]
  s.homepage    = "http://calaba.sh"
  s.summary     = %q{Client for calabash-ios-server for automated functional testing on iOS}
  s.description = %q{calabash-cucumber drives tests for native iOS apps. You must link your app with calabash-ios-server framework to execute tests.}
  s.files         = ["libcalabash/libCalabash.a"].concat(`git ls-files`.split("\n"))
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = "calabash-ios"
  s.require_paths = ["lib"]

  s.add_dependency( "CFPropertyList", ["~>2.2"])
  s.add_dependency( "geocoder","~>1.1")
  s.add_dependency( "slowhandcuke" )
  s.add_dependency( "bundler", ["~>1.2"] )
  s.add_dependency( "httpclient","~>2.3")
  s.add_dependency( "run_loop", "0.0.4" )
  s.add_dependency( "frank-cucumber", "1.1.3")

end
