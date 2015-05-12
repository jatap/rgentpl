require File.expand_path('../lib/rgentpl/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "rgentpl"
  gem.version       = Rgentpl::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.date          = '2015-04-05'
  gem.summary       = %q{Ruby Skeleton Generator}
  gem.description   = %q{Ruby Skeleton Generator based in templates}
  gem.license       = "MIT"
  gem.authors       = ["Julio Antúnez Tarín"]
  gem.email         = "julio.antunez.tarin@gmail.com"
  gem.homepage      = "https://github.com/jatap/rgentpl#readme"
  gem.executables   = ["rgentpl"]

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'rake'
  gem.add_dependency 'virtus'
  gem.add_dependency 'thor'

  gem.add_development_dependency 'bundler', '>= 1.0'
  gem.add_development_dependency 'ruby_gntp'
  gem.add_development_dependency 'growl'
  gem.add_development_dependency 'listen'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-bundler'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'guard-spork'
  gem.add_development_dependency 'guard-rubocop'
  gem.add_development_dependency 'guard-yard'
  gem.add_development_dependency 'guard-cane'
  gem.add_development_dependency 'guard-rubycritic'
  gem.add_development_dependency 'rb-inotify', '>= 0.9.0'
  gem.add_development_dependency 'rb-fsevent', '>= 0.9.3'
  gem.add_development_dependency 'rb-fchange', '>= 0.0.6'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'cane'
  gem.add_development_dependency 'rcodetools'
  gem.add_development_dependency 'fastri'
  gem.add_development_dependency 'flay'
  gem.add_development_dependency 'flog'
  gem.add_development_dependency 'rubycritic'
  gem.add_development_dependency 'excellent'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'sdoc'
  gem.add_development_dependency 'sdoc-templates-42floors'
  gem.add_development_dependency 'redcarpet'
  gem.add_development_dependency 'rspec', '>= 3.2'
  gem.add_development_dependency 'spork'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'simplecov-gem-adapter'
  gem.add_development_dependency 'selenium-webdriver'
  gem.add_development_dependency 'launchy'
  gem.add_development_dependency 'capybara'
  gem.add_development_dependency 'webrat'
  gem.add_development_dependency 'rspec-nc', '>= 0.2.0'
  gem.add_development_dependency 'rspec-abhakungszeichen-formatter'
  gem.add_development_dependency 'nyan-cat-formatter'
  gem.add_development_dependency 'fuubar', '>= 2.0.0'
  gem.add_development_dependency 'ffaker'
  gem.add_development_dependency 'byebug'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'pry-doc'
  gem.add_development_dependency 'pry-byebug'
  gem.add_development_dependency 'awesome_print'
  gem.add_development_dependency 'colorize'
  gem.add_development_dependency 'bcrypt-ruby'

end

