require 'spec_helper'

describe Rgentpl::Application do
  describe '#exec' do
    it 'executes application' do
      stdout = capture_stdout do
        Rgentpl::Application.exec
      end
      expect(stdout).to match /Commands:/
    end
  end
end
