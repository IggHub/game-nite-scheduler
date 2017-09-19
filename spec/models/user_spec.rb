require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) {FactoryGirl.create(:user)}
  let(:user2) {FactoryGirl.create(:user)}

  it "has a valid factory" do
    expect(user1).to be_valid
    expect(user2).to be_valid
  end

  it {should have_many :friends}   
  it {should have_many :friendships}
end
