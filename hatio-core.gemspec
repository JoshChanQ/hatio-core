# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "hatio-core/version"

Gem::Specification.new do |s|
  s.name        = "hatio-core"
  s.version     = HatioCore::VERSION
  s.authors     = ["Hatio-Lab."]
  s.email       = ["heartyoh@hatiolab.com"]
  s.homepage    = "http://hatiolab.com"
  s.summary     = "Hatio-Lab. Application Core Library"
  s.description = "Hatio-Lab. Application Core Library"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "uuidtools", "~>2.1"
end
