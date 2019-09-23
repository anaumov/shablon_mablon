# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from Pundit::NotAuthorizedError, with: :forbidden

  private

  def not_found
    respond_to do |format|
      format.all { render file: 'public/404.html', layout: false, status: :not_found }
    end
  end

  def forbidden
    respond_to do |format|
      format.all { render file: 'public/403.html', layout: false, status: :forbidden }
    end
  end

  def page
    params[:page] || 1
  end

  def per_page
    50
  end
end
