# Application name
set :application, 'rgentpl'

# Git repo URL
set :repo_url, 'git@github.com:example/<%= app_name %>.git'

# Stages
set :stages, %w(staging production)
set :default_stage, 'production'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, -> { "/usr/local/share/console/#{fetch(:application)}" }

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :linked_files is [] (persists across deploys)
set :linked_files, fetch(:linked_files, [])

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, [])

# Default value for default_env is {}
set :default_env, {}

# Default value for keep_releases is 5
set :keep_releases, 5

# Rvm
set :rvm_ruby_version, '2.2.1'
set :rvm_custom_path, '/usr/local/rvm'

# Bundle
set :bundle_env_variables, {}
set :bundle_gemfile, -> { release_path.join('Gemfile') }
set :bundle_dir, -> { shared_path.join('bundle') }
set :bundle_flags, '--quiet'
set :bundle_without, %w(development test).join(' ')
set :bundle_jobs, 4
set :bundle_roles, :all
