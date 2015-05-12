if ['test', 'development'].include?(TEMPLATE_ENV)
  require 'rspec'
  require 'rspec/core/rake_task'

  desc 'Run the specs under spec/'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = ['--options', '.rspec']
  end
end
