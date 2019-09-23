# frozen_string_literal: true

class BaseDecorator < SimpleDelegator
  attr_reader :decorated_model

  def initialize(model)
    super(model)
    @decorated_model = model
  end
end
