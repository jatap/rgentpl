require 'rubocop/rake_task'

desc 'Run RuboCop on the root directory'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = ['--out', 'tmp/rubocop_results.html']
  task.formatters = ['html']
  task.fail_on_error = false
end

task default: :rubocop
