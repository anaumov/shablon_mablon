# frozen_string_literal: true

redis_url = ENV.fetch('REDIS_URL', Settings.sidekiq.redis.url)

if Rails.env.production?
  puts 'SIDEKIQ async mode'
  Sidekiq.configure_server do |config|
    config.redis = { url: redis_url }
  end
  Sidekiq.configure_client do |config|
    config.redis = { url: redis_url }
  end
elsif Rails.env.development?
  puts 'SIDEKIQ inline mode'
  require 'sidekiq/testing/inline'
  Sidekiq::Testing.inline!
elsif Rails.env.test?
  require 'sidekiq/testing/inline'
  Sidekiq::Testing.fake!

  Sidekiq.configure_server do |config|
    config.redis = { url: redis_url }
  end
  Sidekiq.configure_client do |config|
    config.redis = { url: redis_url }
  end
else
  raise "Not supported env #{Rails.env}"
end
