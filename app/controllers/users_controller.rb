class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.order("created_at DESC")
    end
    #@availabilities = current_user.availability
  end

  def create_availability
    @user = current_user
    @availability = current_user.availability.new
    if @availability.save
      redirect_to root_url
    end
  end
end
