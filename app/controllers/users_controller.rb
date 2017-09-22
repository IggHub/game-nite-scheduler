class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def create_availability
    @user = current_user
    @availability = current_user.availability.new
    if @availability.save
      redirect_to root_url
    end
  end
end
