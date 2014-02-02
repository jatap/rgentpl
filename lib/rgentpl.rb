require 'virtus'
require 'thor'
require 'logger'

# Rgentpl
module Rgentpl
  # Loading core extensions
  Dir["#{File.dirname(__FILE__)}/../lib/rgentpl/core_ext/*.rb"]
    .each do |f|
    require f
  end

  # Loading exception
  Dir["#{File.dirname(__FILE__)}/../lib/rgentpl/exception/*.rb"]
    .each do |f|
    require f
  end

  require_relative 'rgentpl/command/generate'
  require_relative 'rgentpl/command/base'
  require_relative 'rgentpl/boot/initializer'
  require_relative 'rgentpl/boot/application'
  require_relative 'rgentpl/core/configuration'

  class << self
    # Environment
    #
    # @return [String] the current environment
    def env
      unless defined?(TEMPLATE_ENV)
        load File.expand_path('../../config/environment.rb',  __FILE__)
      end
      TEMPLATE_ENV
    end

    # Logger
    #
    # @return [Logger] the logger
    def logger
      @_logger ||= Logger.new(
        "#{File.dirname(__FILE__)}/../log/#{config.log_file}"
      )
    end
  end
end
