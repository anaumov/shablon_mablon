# frozen_string_literal: true

module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def unsubscribed
      stop_all_streams
    end
  end
end
