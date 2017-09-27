module ApplicationHelper
  def show_available_hour(model)
    return model.availability.group_by(&:available_on)
  end

  def say_hello
    return "hello"
  end

  def user_availability_hours
    obj = {}
    24.times {|el| obj[el] = "null"}

    return obj
  end
end
