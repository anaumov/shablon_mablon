# frozen_string_literal: true

if Rails.env.test? || Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    #FIXME: use credential
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
      aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      region:                ENV.fetch('AWS_REGION')
    }
    config.fog_directory  = ENV.fetch('AWS_BUCKET')
    config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" }
  end
end
