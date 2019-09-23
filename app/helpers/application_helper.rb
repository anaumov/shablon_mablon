# frozen_string_literal: true

module ApplicationHelper
  def enum_collection(collection, attribute)
    collection.map { |value| [value, I18n.t(value, scope: [:enums, :check, attribute])] }
  end

  def current_path
    tail = request.env['PATH_INFO'].split('/')[3..]
    "/#{tail.try(:join, '/')}"
  end

  def higlight(text, mark)
    mark.present? ? text.gsub(mark, "<mark>#{mark}</mark>").html_safe : text
  end
end
