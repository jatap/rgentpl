require 'stringio'

module Rgentpl
  module Helper
    module Assertions
      def capture_stdout(&block)
        old_stdout = $stdout
        fake       = StringIO.new
        $stdout    = fake

        block.call
        fake.string
      ensure
        $stdout = old_stdout
      end
    end
  end
end
