TEMPLATE_ROOT = "#{File.expand_path(File.dirname(__FILE__) + "/..")}" unless defined?( TEMPLATE_ROOT )

# Rgentpl
#
# @author Julio Antúnez Tarín
module Rgentpl
  # Run boot
  #
  # @return [void]
  def self.boot
    Boot.new.run
  end

  # Boot
  #
  # Launcher class
  class Boot
    # Launcher
    #
    # @return [void]
    def run
      require_relative '../lib/rgentpl' unless defined?(Rgentpl.env)
    end
  end
end

# Run
Rgentpl.boot
