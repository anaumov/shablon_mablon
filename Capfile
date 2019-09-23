# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/puma'
require 'capistrano/rails/console'
require 'capistrano/rails_tail_log'
require 'sshkit/sudo'
require 'whenever/capistrano'
require 'capistrano/delayed_job'
require 'capistrano-db-tasks'
require 'capistrano/sidekiq'
require 'capistrano/shell'

install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Monit

# Load custom tasks from `libs/capistrano/tasks` if you have any defined
Dir.glob('libs/capistrano/tasks/*.rake').each { |r| import r }
