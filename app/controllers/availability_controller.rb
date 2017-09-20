class AvailabilityController < ApplicationController
  def create
    @availability = current_user.availability.build(available_on: Date.today, available_hour: params[:available_hour])
    if @availability.save
      flash[:notice] = "New availability added!"
      redirect_to root_url
    else
      flash[:error] = "Error adding availability"
      redirect_to root_url
    end
  end

  def destroy
    @availability = current_user.availability.find(params[:id])
    @availability.destroy
    flash[:notice] = "Availability removed"
    redirect_to current_user
  end
end
