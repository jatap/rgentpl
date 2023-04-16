require "rubygems"
require "pry"

ENV["RUBY_ENV"] ||= "test"

unless ENV["DRB"]
  require "simplecov"
  SimpleCov.start
end

require "rspec"

ENV["TEMPLATE_ENV"] = "test"

require File.dirname(__FILE__) + "/../config/environment.rb"

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.order = "random"
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end
