require 'spec_helper'

describe Rgentpl::Configuration do
  before :each do
    @configuration = Rgentpl::Configuration.new
  end

  describe 'given expected attributes' do
    [:active,
     :log_file,
     :options].each do |expected_attribute|
      it 'responds to each of them' do
        expect(@configuration).to respond_to expected_attribute
      end
    end
  end

  describe '#config' do
    it 'is an Rgentpl::Configuration object' do
      expect(Rgentpl.config).to be_kind_of Rgentpl::Configuration
    end
  end

  context '#configure' do
    before :each do
      Rgentpl.configure do |config|
        config.new_amazing_key = 'some value'
        config.active          = false
      end
    end

    describe 'can be configured with a block' do
      it 'adding a new attribute' do
        expect(Rgentpl.config.new_amazing_key).to eq 'some value'
      end

      it 'updating an existing one' do
        expect(Rgentpl.config.active).to be_falsey
      end
    end
  end

  describe '.config' do
    it 'an alias of Rgentpl.config' do
      Rgentpl.config.active = false
      expect(Rgentpl.config.to_hash).to eq @configuration.config.to_hash
    end
  end
end
