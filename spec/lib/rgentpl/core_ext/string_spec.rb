require 'spec_helper'

describe Rgentpl::CoreExt do
  let(:str) { String.new('My custom string') }
  let(:result) { 'MyCustomString' }

  describe '.camelize' do
    it 'format according to camelize rules' do
      expect(str.camelize).to eq result
    end
  end

  describe '.camelize!' do
    it 'persists result into variable' do
      expect { str.camelize! }.to change { str }
    end
  end
end
