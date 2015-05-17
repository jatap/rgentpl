namespace :deploy do
  desc 'Copies .git folder (Capistrano 3. Bug?)'
  task :copy_git do
    on roles(:app) do
        puts release_path
        within release_path do
              execute :cp, '-r', repo_path, '.git'
        end
    end
  end

  before 'bundler:install', 'deploy:copy_git'
end