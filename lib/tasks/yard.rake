begin
  require "rspec"
  require "rspec/core/rake_task"
  require "yard"

  desc "Generate docs under doc/api folder (YARD)"
  YARD::Rake::YardocTask.new do |t|
    t.files += ["lib/**/*.rb"]
    t.options += ["--protected"]
    t.options += ["--private"]
    t.options += ["--output-dir", "doc/api"]
    t.stats_options = ["--list-undoc"]
  end
  task doc: :yard
rescue LoadError
  warn "yard not available, yard task not provided."
end
