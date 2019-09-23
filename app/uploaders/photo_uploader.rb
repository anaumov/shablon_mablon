class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # frozen_string_literal: true

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Create different versions of your uploaded files:
  version :medium do
    process resize_to_fill: [500, 500]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
