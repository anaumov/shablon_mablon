set :application, 'app_actie'
set :repo_url, 'git@github.com:anaumov/app_actie.git'

set :branch, ENV["BRANCH"] || 'master'
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :deploy_to, '/home/wwwactie/app_actie'

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_files, %w{config/database.yml .env}

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/uploads public/images public/upl private/files}

# Default value for keep_releases is 5
# set :keep_releases, 5

set :puma_init_active_record, true
set :puma_workers, 2

set :sidekiq_processes, 2
set :sidekiq_options_per_process, ['--queue default', '--queue mailers']

set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end

set :db_local_clean, true
