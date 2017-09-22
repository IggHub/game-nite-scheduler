require 'rails_helper'

RSpec.describe Availability, type: :model do
  it {should belong_to :user}
    it {should validate_uniqueness_of(:available_hour).scoped_to(:available_on)}
end
