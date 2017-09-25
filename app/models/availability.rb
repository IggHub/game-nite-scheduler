class Availability < ApplicationRecord
  belongs_to :user

  validates_uniqueness_of :available_hour, scope: [:available_on, :user_id]
end
