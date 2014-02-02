# Rgentpl
module Rgentpl
  # Application
  #
  # Main runner method
  module Application
    class << self
      # Runner
      #
      # @return [Boolean] the runned state
      def exec
        Rgentpl::Command::Base.start
      end
    end
  end
end
