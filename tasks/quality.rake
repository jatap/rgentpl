begin
  require 'cane/rake_task'
  require 'simplecov'

  desc 'Run cane to check quality metrics'
  Cane::RakeTask.new(:quality) do |cane|
    cane.abc_max = 10
    cane.add_threshold SimpleCov.result.covered_percent, :>=, 99
    cane.no_style = true
    cane.canefile = '.cane'
  end

rescue LoadError
  warn 'cane not available, quality task not provided.'
end
