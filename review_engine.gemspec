$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "review_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "review_engine"
  s.version     = ReviewEngine::VERSION
  s.authors     = ["Luis Saffie"]
  s.email       = ["luis@homestars.com"]
  s.homepage    = "https://homestars.com"
  s.summary     = "Summary of ReviewEngine."
  s.description = "Description of ReviewEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
