require 'colorize'

namespace :rubycritic do

  desc 'RubyCritic code metrics'
  task :check do
    puts '- Run rubycritics checking process.'.green
    sh('rubycritic lib')
    puts '- Process has finished.'.green
  end
end
