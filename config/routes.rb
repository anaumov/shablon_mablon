# frozen_string_literal: true

TemplateApp::Application.routes.draw do
  # authenticate :user, ->(u) { u.admin? } do
  #   mount Sidekiq::Web => '/sidekiq'
  # end

  # devise_for :users
  self.default_url_options Settings.app.default_url_options.symbolize_keys
  resources :users
end
