require 'spec_helper'

describe Rgentpl::Initializer do
  describe '#build' do
    it 'loads enviroment' do
      expect(Rgentpl.env).to eq TEMPLATE_ENV
    end

    context 'given initializers' do
      let(:initializer) do
        File.expand_path("#{File.dirname(__FILE__)}/../../../../config/initializers/sample.rb")
      end

      before :each do
        file = File.new(initializer, 'w')
        file.write "Rgentpl.configure { |c| c.new_key = 'New value' }"
        file.close

        Rgentpl::Initializer.build
      end

      after do
        File.delete initializer
      end

      it 'loads file' do
        expect(Rgentpl.config.new_key).to eq 'New value'
      end
    end
  end
end
