require File.expand_path("../config/environment", __FILE__)

require "rubygems"

begin
  require "bundler"
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit false
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems."
  exit e.status_code
end

# Main
require "rake"

# Custom tasks
Dir[File.join(File.dirname(__FILE__), "lib/tasks/*.rake")].each { |rake| load rake }
