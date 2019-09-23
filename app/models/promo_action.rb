# frozen_string_literal: true

class User < ApplicationRecord
  include AASM
  mount_uploader :avatar, PdfUploader

  validates :email, :password, presence: true
  validates :email, uniqueness: true
end
