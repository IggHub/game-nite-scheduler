require 'rails_helper'

RSpec.describe Friendship, type: :model do
  it {should belongs_to :user}
  it {should belongs_to :friend}
end
