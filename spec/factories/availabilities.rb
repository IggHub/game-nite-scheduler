FactoryGirl.define do
  factory :availability do
    available_on "2017-09-19"
    available_hour {|n| n}
    user_id 1
  end
end
