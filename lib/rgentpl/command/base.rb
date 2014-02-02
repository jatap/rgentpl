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
      class_option :verbose, type: :boolean, aliases: '-v', default: false

      desc 'todo', 'TODO - Delete this command'
      long_desc %q{
      TODO
      - Delete this command when clone this repository.
      }
      # @return [String] the test message
      def todo
        if options[:verbose]
          puts '*** Delete this command ***'
        else
          puts 'Delete this command'
        end
      end

      # Add generate group command
      register(Rgentpl::Command::Generate,
               'generate',
               'generate APP_NAME -p APP_PATH -t [CTAGS]',
               'Generate application')
    end
  end
end
