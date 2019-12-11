$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "unwhere/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "unwhere"
  spec.version     = Unwhere::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/unwhere"
  spec.summary     = "Remove where conditions from your AR relations"
  spec.description = "Remove where conditions from your AR relations"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "sqlite3"
end
