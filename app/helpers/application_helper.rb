module ApplicationHelper
  @green = "#36D7B7"
  @gray = "#B7BABB"
  @red = "#EC644B"

  def show_available_hour(model)
    return model.availability.group_by(&:available_on)
  end

  def say_hello
    return "hello"
  end

  def availability_hours_object(arr)
    obj = {}
    24.times {|el| obj[el] = "null"}
    arr.each {|el| obj[el] = true}

    return obj
  end

  def get_user_availability_object(user)
    return availability_hours_object(user.availability.where(available_on: Date.today - 2).map{|el| el.available_hour})
  end

  def get_user_availability_array(user)
    return user.availability.where(available_on: Date.today).map{|el| el.available_hour}
  end

  def which_color(availability_bool)
    case availability_bool
    when true
      return "background:#36D7B7"
    when false
      return "background:#EC644B"
    else
      return "background:"#B7BABB"
    end
  end

end
