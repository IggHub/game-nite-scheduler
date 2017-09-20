require 'rails_helper'

RSpec.describe AvailabilityController, type: :controller do
  #let(:availability1) {FactoryGirl.create(:availability)}
  login_user

  describe "POST #create" do
    it "adds new availability" do
      expect {
        post :create, params: {available_hour: 17}
      }.to change(Availability, :count).by(1)
    end
  end

end
