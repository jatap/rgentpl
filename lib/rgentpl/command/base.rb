# Rgentpl
module Rgentpl
  # Command
  #
  # Application command
  module Command
    # Base command
    #
    # General command
    class Base < Thor
      package_name "Rgentpl"
      map "-v" => :version

      desc "version, -v", "Show Ruby Generator Template version."
      # @return [String] the test message
      def version
        say "Rgentpl version #{Rgentpl::VERSION}", :yellow
      end

      # Add generate group command
      register(Rgentpl::Command::Generate,
        "generate",
        "generate APP_NAME [-p|--app_path APP_PATH] [-t|--ctags CTAGS]",
        "Generate application")
    end
  end
end
