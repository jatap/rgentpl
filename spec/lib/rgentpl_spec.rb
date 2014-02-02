require 'spec_helper'

describe Rgentpl do
  describe '.env' do
    it 'shows current environment' do
      expect(Rgentpl.env).to eq('test')
    end

    context 'when none default environment is supplied' do
      before :each do
        Object.send(:remove_const, :TEMPLATE_ENV)
      end

      it 'adds development environment' do
        expect(Rgentpl.env).to eq('development')
      end
    end
  end

  describe '.logger' do
    it 'is a Logger object' do
      expect(Rgentpl.logger).to be_kind_of Logger
    end
  end
end
