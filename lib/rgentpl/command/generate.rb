# Rgentpl
module Rgentpl
  # Command
  #
  # Application command
  module Command
    # Generate group command
    #
    # General command
    class Generate < Thor::Group
      include Thor::Actions

      APP_PATH_DESC = 'Application path with current path as a default value'
      CTAGS_DESC    = 'Full CTags path command (default: /usr/local/bin/ctags)'

      # @return [String] the final install application path
      attr_accessor :app_path
      # @return [String] the ctags full binary path
      attr_accessor :ctags

      # App name argument
      argument :app_name, type: :string, required: true,
                          desc: 'Application name'
      # @return [String] the application path root
      def self.source_root
        TEMPLATE_ROOT
      end

      class_option :app_path, type: :string,
                              required: true,
                              desc: APP_PATH_DESC,
                              default: File.expand_path('.'),
                              aliases: '-p'
      class_option :ctags, type: :string,
                           required: false,
                           desc: CTAGS_DESC,
                           default: '/usr/local/bin/ctags',
                           aliases: '-t'
      # @return [void]
      def create_app
        @app_path = options['app_path']
        @ctags    = options['ctags']
        directory('src', "#{@app_path.chomp('/')}/#{app_name}")
      end

      # @return [void]
      def add_perms
        chmod("#{@app_path.chomp('/')}/#{app_name}/bin/#{app_name}", 0755)
      end

      # @return [void]
      def git
        inside("#{app_path}/#{app_name}") do
          run('git init')
          run('git add .')
          run('git commit -am "First sending."')
          run('git checkout -b develop')
          run('git checkout -b feature-domain-logic')
        end
      end
    end
  end
end
