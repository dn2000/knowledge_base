$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "knowledge_base/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "knowledge_base"
  s.version     = KnowledgeBase::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of KnowledgeBase."
  s.description = "TODO: Description of KnowledgeBase."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.0.rc1"
  s.add_dependency "friendly_id", "~> 5.0.0"
  s.add_dependency "publishable", "~> 1.0.1"
  s.add_dependency "carrierwave", "~> 0.10.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "factory_girl_rails"
end