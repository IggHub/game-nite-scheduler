class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "New friend added!"
      redirect_to current_user
    else
      flash[:error] = "Error adding friend"
      redirect_to current_user
    end
  end

  def destroy

    @friendship = current_user.friendships.where(user_id: params[:user_id], friend_id: params[:friend_id])
    @friendship[0].destroy
    flash[:notice] = "Remove friendship"
    redirect_to current_user
  end
end
