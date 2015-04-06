require 'rdoc/task'
require 'simplabs/excellent/rake'

Simplabs::Excellent::Rake::ExcellentTask.new(:excellent) do |t|
  # Optional, if you don't specify html, output will be written to $stdout
  t.html  = 'tmp/excellent.html'
  t.paths = %w(lib)
end
