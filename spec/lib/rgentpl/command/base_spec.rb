require 'spec_helper'

describe Rgentpl::Command::Base do
  context 'given a list of options' do
    let(:command) { Rgentpl::Command::Base.new }

    it 'responds successfully to help, version and generate' do
      [:help, :version, :generate].each do |element|
        expect(command).to respond_to element
      end
    end
  end

  describe 'given a help option' do
    it 'shows help info' do
      expect { Rgentpl::Command::Base.help(Thor::Base.shell.new) }.to \
        output(/help/).to_stdout
    end
  end

  describe 'given a version option' do
    it 'shows version info' do
      expect { Rgentpl::Command::Base.start %W[ version ] }.to \
        output(/version/).to_stdout
    end
  end
end
