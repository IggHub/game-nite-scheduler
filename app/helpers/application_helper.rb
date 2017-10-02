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
    return availability_hours_object(user.availability.where(available_on: Date.today).map{|el| el.available_hour})
    #returns {0 => null, 1 => true, 2=> null, ... 23}
  end

  def get_user_availability_array(user)
    return user.availability.where(available_on: Date.today).map{|el| el.available_hour}
    #if user is available at 1, 3, and 4, then returns [1,3,4]
  end

  def which_color(availability_bool)
    case availability_bool
    when true
      return "green"
    when false
      return "red"
    else
      return "grey"
    end
  end

end
