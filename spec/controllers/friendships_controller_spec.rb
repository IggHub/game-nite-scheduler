require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do
  let(:friend1) {FactoryGirl.create(:user)}

  login_user

  describe "POST #Create" do
    it "adds new friend" do
      expect {
        post :create,params: { friend_id: friend1.id}
      }.to change(Friendship, :count).by(1)
    end
  end

end
