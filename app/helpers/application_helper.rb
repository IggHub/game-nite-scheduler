module ApplicationHelper
  def show_available_hour(model)
    return model.availability.group_by(&:available_on)
  end
end
