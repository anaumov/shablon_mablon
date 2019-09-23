# frozen_string_literal: true

class BasicFormObject
  include ActiveModel::Model

  # Do not add assign_attributes here! It breakes ActiveRecord meta-magic
  delegate :valid?, :save, :save!, :update, :update!, to: :model

  def model
    return @model if @model

    @model = find_or_initialize_record
    perform(@model)
    @model
  end

  private

  def find_or_initialize_record
    return model_class.find_or_initialize_by(id: id) if id

    model_class.new
  end

  def model_class
    raise 'Not implemented'
  end

  def perform(_record)
    raise 'Not implemented'
  end
end
