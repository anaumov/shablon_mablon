require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'sidekiq'
require 'sidekiq/web'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module TemplateApp
  mattr_accessor :version

  # Depreate I18n warngings
  I18n.enforce_available_locales = true

  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Moscow'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    #
    config.i18n.default_locale = :ru

    config.paths.add "app/api", glob: "**/*.rb"
    config.autoload_paths += Dir["#{Rails.root}/app/api/*"]
    config.active_job.queue_adapter = :sidekiq

    config.action_cable.mount_path = '/websocket'
    # TODO: Надо прописать с каких хостов принимать соединения
    config.action_cable.allowed_request_origins = [
      'http://rubyonrails.com',
      %r{http://ruby.*},
      'http://127.0.0.1',
      'localhost'
    ]

    # config.active_record.raise_in_transactional_callbacks = true # - it was deprecated and has no effect
  end
end
