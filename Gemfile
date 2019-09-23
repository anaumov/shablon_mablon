source 'http://rubygems.org'

gem 'rails', '~> 5.2'
gem 'dotenv-rails'

gem 'hashie-forbidden_attributes'
gem 'rack-cors'

# API
gem 'grape'
gem 'grape-swagger'
gem 'swagger-ui_rails5', github: 'yunixon/swagger-ui_rails5'

# Use postgresql as the database for ActiveRecord
gem 'pg'
gem 'settingslogic'

# Авторизация и аутентификация
gem 'devise'
gem 'devise-bootstrap-views'
gem 'pundit'

# Модели, value object и form objects
gem 'active_attr'
gem 'validates'
gem 'hashie'

gem 'haml'

gem 'mini_magick'
gem 'carrierwave'
gem 'fog-aws'
gem 'rubyzip', '>= 1.0.0'

gem 'simple_form'

gem 'kaminari'
gem 'bootstrap-kaminari-views'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'role-rails'
gem 'spreadsheet'
gem 'simple_xlsx_reader'
gem 'docx_replace'

# локаль
gem 'russian'
gem 'translit'

gem 'lodash-rails'
gem 'angularjs-rails'
gem 'momentjs-rails'
gem 'bootstrap-daterangepicker-rails'
gem 'jquery-ui-rails'
gem 'best_in_place', '~> 3.0.1'

gem 'nilify_blanks'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '> 5.0.0'

#assets
# Use edge version of sprockets-rails
gem 'sprockets-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

gem 'aasm'

gem 'whenever', :require => false

gem 'daemons'
gem 'time_difference'
gem 'httparty'
gem 'dry-validation', '~> 0.11.1'
gem 'airbrake', '~> 5.0'
gem 'os'

gem 'mailgun-ruby', '~>1.1.6'
gem 'phonelib', '~> 0.6.25'

# парсинг
gem 'nokogiri'

# деньги
gem 'money'
gem 'money-rails'

# Очереди
gem 'delayed_job_active_record'
gem 'sidekiq'

# логирование
gem 'auto_logger'
gem 'audited'

# Сериализация
gem 'active_model_serializers'

# Slack bot
gem 'slack-ruby-client'

group :doc do
  gem 'sdoc', require: false
end

group :development do
  gem 'awesome_print'
  gem 'bond'
  gem 'pry-rails'

  gem 'pry-pretty-numeric'
  gem 'pry-highlight'
  gem 'pry-git'
  gem 'pry-developer_tools'

  gem 'pry-remote'

  gem 'rspec-console'

  # step, next, finish, continue, break
  gem 'pry-nav'
  gem 'pry-doc'
  gem 'pry-docmore'

  # Добавляет show-stack
  gem 'pry-stack_explorer'

  # rake и generator комманды в консоли
  gem 'commands'

  gem 'hpricot', '>= 0.8.6'
  gem 'ruby_parser', '>= 2.3.1'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma'
  gem 'capistrano-rails-console'
  gem 'capistrano-rails-tail-log'
  gem 'capistrano-db-tasks', require: false
  gem 'capistrano-shell', require: false
  gem 'capistrano3-delayed-job', '~> 1.0'
  gem 'capistrano-sidekiq', require: false
  gem 'sshkit-sudo'
  gem 'rubocop'
  gem 'rubocop-rspec'

  # Поддержка для rails_panel в chrome
  gem 'meta_request'

  gem 'letter_opener'
  gem 'foreman'
  gem 'guard-livereload'
  gem 'table_print'
  gem 'semver2'
end

group :test, :development do
  gem 'brakeman'
  gem 'ryba'
  gem 'factory_bot_rails'
  gem 'rb-inotify', '~> 0.9', :require => false
  gem 'rspec', '3.5'
  gem 'rspec-rails', '3.5.2'
  gem 'overcommit'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec-prof'
  gem 'resque_spec'
  gem 'guard', '>= 2.4.0'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-rails'
  gem 'guard-cucumber'
  gem 'guard-ctags-bundler'
  gem 'guard-rubocop'
  gem 'database_cleaner'
  gem 'launchy', '>= 2.1.2'
  gem 'turn', :require => false
  gem 'shoulda-matchers'
  gem 'simplecov', :require => false
  gem 'timecop', '~> 0.9.1'
  gem 'vcr'
  gem 'webmock'
  gem 'json_matchers'
end

group :production do
  # Server
  gem 'puma'
end
