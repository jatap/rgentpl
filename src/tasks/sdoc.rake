require 'rdoc/task'
require 'sdoc'
require 'sdoc/templates/42floors'

namespace :doc do

  Rake::RDocTask.new do |rd|
    rd.main = 'README.rdoc'
    rd.title = 'Napp Documentation'
    rd.rdoc_dir = 'doc/rdoc'

    rd.options << '-f' << 'sdoc'
    rd.options << '-T' << '42floors'

    rd.rdoc_files.include('README.rdoc')
    rd.rdoc_files.include('lib/**/*.rb')
  end

end
