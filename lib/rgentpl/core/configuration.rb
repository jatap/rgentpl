# Rgentpl
module Rgentpl
  class << self
    # Configure
    #
    # @param _block [Proc] the configuration options
    # @raise [NoMethodError] when new options are inside configuration block
    # @return [Rgentpl::Configuration] the configuration
    def configure(&_block)
      yield @config ||= Rgentpl::Configuration.new
    rescue NoMethodError => exc
      add_new_attribute_from_exception exc
    end

    # Configuration object
    #
    # @return [Rgentpl::Configuration] the configuration object
    def config
      @config ||= Rgentpl::Configuration.new
    end

    # Interface for adding new attribute in configuration block
    #
    # @param exc [NoMethodError] the exception
    # @return [void]
    def add_new_attribute_from_exception(exc)
      add_new_attribute(exc, exc.name.to_s.gsub(/=$/, ''))
    end

    # Implementation for adding new attribute in configuration block
    #
    # @param exc [NoMethodError] the exception
    # @param method [String] the writter method name
    # @return [void]
    def add_new_attribute(exc, method)
      @config.extend Virtus.model
      @config.attribute method.to_sym, String, default: exc.args.first,
                                               lazy: true
      @config.send(exc.name, exc.args.first)
    end
    private :add_new_attribute
  end

  # Configuration
  class Configuration
    include Virtus.model

    attribute :active,   Boolean,                default: true
    attribute :log_file, String
    attribute :options,  Hash[Symbol => String], default: {}

    # Set custom default values
    #
    # @param args [Array] the attributes
    # @return [void]
    def initialize(*args)
      super
      # Bug - Update some default values
      @log_file = Rgentpl.env + '.log'
    end

    # Configuration
    #
    # @return [Rgentpl::Configuration] the configuration
    def config
      Rgentpl.config
    end
  end
end
