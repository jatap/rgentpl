require 'spec_helper'

describe Rgentpl::Application do
  describe '#exec' do
    it 'executes application' do
      # Fix rake_taks bug
      ARGV = []

      expect { Rgentpl::Application.exec }.to output(/commands:/).to_stdout
    end
  end
end
