require 'spec_helper'

describe Rgentpl::Command::Base do
  let(:command) { Rgentpl::Command::Base.new }

  describe 'given a help option' do
    it 'responds successfully' do
      expect(command).to respond_to :help
    end
  end

  describe 'given a todo option' do
    it 'responds successfully' do
      expect(command).to respond_to :todo
    end

    it 'shows todo message' do
      expect { command.todo }.to change { STDOUT }
    end
  end

  context 'admits a verbose option' do
    it 'successfully' do
      expect { Rgentpl::Command::Base.start %w[todo -v] }.to change { STDOUT }
    end
  end

  describe 'responds to class options' do
    let(:commands) { %w[ verbose ] }

    it 'like verbose' do
      commands.each { |c| expect(command.options).to include c }
    end
  end
end
