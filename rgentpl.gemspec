require File.expand_path("lib/rgentpl/version", __dir__)

Gem::Specification.new do |gem|
  gem.name = "rgentpl"
  gem.version = Rgentpl::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.summary = "Ruby Skeleton Generator"
  gem.description = "Ruby Skeleton Generator based in templates"
  gem.license = "MIT"
  gem.authors = ["Julio Antúnez Tarín"]
  gem.email = "julio.antunez.tarin@gmail.com"
  gem.homepage = "https://github.com/jatap/rgentpl#readme"

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "rake"
  gem.add_runtime_dependency "thor"
  gem.add_runtime_dependency "virtus"
  gem.add_runtime_dependency "logger"

  gem.add_development_dependency "awesome_print"
  gem.add_development_dependency "bundler"
  gem.add_development_dependency "byebug"
  gem.add_development_dependency "colorize"
  gem.add_development_dependency "debug", ">= 1.0.0"
  gem.add_development_dependency "fuubar"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-bundler"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "guard-rubycritic"
  gem.add_development_dependency "guard-standardrb"
  gem.add_development_dependency "guard-yard"
  gem.add_development_dependency "neovim"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "pry-byebug"
  gem.add_development_dependency "redcarpet"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-nc"
  gem.add_development_dependency "rubocop-rake"
  gem.add_development_dependency "rubocop-rspec"
  gem.add_development_dependency "rubycritic"
  gem.add_development_dependency "sdoc"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "solargraph"
  gem.add_development_dependency "standard", "1.5.0"
  gem.add_development_dependency "webrick"
  gem.add_development_dependency "yard"
end
