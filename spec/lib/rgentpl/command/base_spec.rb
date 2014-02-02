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
    before do
      @help = capture_stdout do
        Rgentpl::Command::Base.help(Thor::Base.shell.new)
      end
    end

    it 'shows help info' do
      expect(@help).to match(/help/)
    end
  end

  describe 'given a version option' do
    before do
      @version = capture_stdout do
        Rgentpl::Command::Base.start %W[ version ]
      end
    end

    it 'shows version info' do
      expect(@version).to match(/version/)
    end
  end
end
