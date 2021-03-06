require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do
  login_user

  before :each do
    @friend1 = FactoryGirl.create(:user)
  end

  describe "POST #Create" do
    it "adds new friend" do
      expect {
        post :create, params: { friend_id: @friend1.id}
      }.to change(Friendship, :count).by(1)
    end
  end

  describe "DELETE #destroy" do
    it "removes a friend =(" do
      friendship = subject.current_user.friendships.create!(friend_id: @friend1.id)
      expect {
        delete :destroy, params: {id: friendship.id}
      }.to change(Friendship, :count).by(-1)
    end
  end

end
