class AvailabilityController < ApplicationController
  def create
    @availability = current_user.availability.build(available_on: Date.today, available_hour: params[:available_hour])
    respond_to do |format|
      if @availability.save
        format.json {render json: @availability}
        format.html {
          flash[:notice] = "New availability added!"
          redirect_to current_user
        }
      else
        format.json {render json: @availability.errors, status: :unprocessable_entity}
        format.html {
          flash[:error] = "Error adding availability"
          redirect_to current_user
        }
      end
    end
  end

  def destroy
    @availability = current_user.availability.find(params[:id])
    @availability.destroy
    flash[:notice] = "Availability removed"
    redirect_to current_user
  end
end
