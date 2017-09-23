class UsersController < ApplicationController
  def index
    @users = User.all_except(current_user).order(:name)
  end

  def show
    @user = current_user
    @users = User.all_except(current_user).order(:name)
    @availabilities = @user.availability.group_by(&:available_on)
  end

  def create_availability
    @user = current_user
    @availability = current_user.availability.new
    if @availability.save
      redirect_to root_url
    end
  end
end
