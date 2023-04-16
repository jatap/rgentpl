require "spec_helper"

describe Rgentpl::Application do
  describe "#exec" do
    it "executes application" do
      ARGV = [] # standard:disable Lint/ConstantDefinitionInBlock
      expect { Rgentpl::Application.exec }.to output(/commands:/).to_stdout
    end
  end
end
