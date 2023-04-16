# Rgentpl
module Rgentpl
  # Initializer
  #
  # Load environment configuration file
  module Initializer
    # Build actions
    #
    # Actions
    # - Load environment configuration file
    # - Load initializers
    #
    # @return [void]
    def self.build
      require_relative "../../../config/environments/#{Rgentpl.env}.rb"

      Dir[File.expand_path(File.join(File.dirname(__FILE__),
        "../../../config/initializers/*.rb"))]
        .each do |file|
        require_relative file
      end
    end
  end
end
