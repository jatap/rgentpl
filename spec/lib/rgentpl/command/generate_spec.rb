require 'spec_helper'
require 'fileutils'

describe Rgentpl::Command::Generate do
  let(:app) { 'test_app' }

  before do
    Rgentpl::Command::Base.start %W[generate #{app}]
  end

  let(:path) do
    Rgentpl::Command::Generate.class_options[:app_path].default.chomp('/')
  end
  let(:file) { "#{path}/#{app}" }

  after do
    FileUtils.rm_rf(file) if File.exists?(file)
  end

  describe '#source_root' do
    it 'sets application source path root' do
      expect(Rgentpl::Command::Generate.source_root)
        .to eq File.absolute_path(File.join(File.dirname(__FILE__), '../../../../'))
    end
  end

  describe '.create_app' do
    it 'adds a new directory with defined structure' do
      expect(File.exists?(file)).to be
    end
  end

  describe '.add_perms' do
    it 'add executions perms to binary file' do
      expect(File.stat(File.join(file, "/bin/#{app}")).mode).to eq 33_261
    end
  end
end
