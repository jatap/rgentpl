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

      # Application path description
      APP_PATH_DESC = "Application path with current path as a default value"

      # @return [String] the final install application path
      attr_accessor :app_path

      # App name argument
      argument :app_name, type: :string, required: true,
        desc: "Application name"
      # @return [String] the application path root
      def self.source_root
        TEMPLATE_ROOT
      end

      class_option :app_path, type: :string,
        required: true,
        desc: APP_PATH_DESC,
        default: File.expand_path("."),
        aliases: "-p"
      # @return [void]
      def create_app
        @app_path = options["app_path"]
        directory("src", "#{@app_path.chomp("/")}/#{app_name}")
      end

      # @return [void]
      def add_perms
        chmod("#{@app_path.chomp("/")}/#{app_name}/bin/#{app_name}", 0o755)
      end

      # @return [void]
      def git
        inside("#{app_path}/#{app_name}") do
          run("git init")
          run("git add .")
          run('git commit -am "First sending."')
        end
      end
    end
  end
end
