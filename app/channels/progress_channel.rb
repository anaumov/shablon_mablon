# frozen_string_literal: true

class ProgressChannel < ApplicationCable::Channel
  def subscribed
    process = process_class.find_by(id: params[:id])

    stream_for process if process
  end

  private

  def process_class
    case params[:type]
    when 'import'
      Import
    when 'export'
      Export
    else
      raise 'Undefined process type!'
    end
  end
end
