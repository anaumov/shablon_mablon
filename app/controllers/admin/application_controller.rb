# frozen_string_literal: true
module admin
  class ApplicationController < ApplicationController
    before_action :ensure_admin!

    private

    def ensure_admin!
      forbidden unless current_user.admin?
    end
  end
end
