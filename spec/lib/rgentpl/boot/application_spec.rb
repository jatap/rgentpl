require 'spec_helper'

describe Rgentpl::Application do
  describe '#exec' do
    it 'executes application' do
      expect { Rgentpl::Application.exec }.to change { STDOUT }
    end
  end
end
