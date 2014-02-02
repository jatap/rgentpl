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
                              desc: 'Application path',
                              default: '/tmp'
      class_option :ctags, type: :string,
                           required: false,
                           desc: 'Full CTags path command',
                           default: '/usr/local/bin/ctags'
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
        run("cd #{app_path}/#{app_name} ;
          git init; git add . ;
          git ci -am 'First sending.' ;
          git checkout -b develop ;
          git checkout -b feature-domain-logic
        ")
      end
    end
  end
end
