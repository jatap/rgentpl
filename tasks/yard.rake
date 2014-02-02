begin
  require 'rspec'
  require 'rspec/core/rake_task'
  require 'yard'

  desc 'Generate docs under doc/api folder (YARD)'
  YARD::Rake::YardocTask.new
  task doc: :yard

rescue LoadError
  warn 'yard not available, yard task not provided.'
end
