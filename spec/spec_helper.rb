TEMPLATE_ENV = 'test' unless defined?(TEMPLATE_ENV)

require 'rubygems'
require 'pry'

ENV['RUBY_ENV'] ||= 'test'

unless ENV['DRB']
  require 'simplecov'
  require 'simplecov-gem-adapter'
  SimpleCov.start 'gem'
end

require 'rspec'
require 'capybara'

require File.dirname(__FILE__) + '/../config/environment'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Include main application module
include Rgentpl

RSpec.configure do |config|
  config.mock_with :rspec

  config.order = 'random'
end
