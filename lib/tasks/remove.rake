namespace :remove do
  desc "Removes all availability created yesterday"
  task yesterday_schedules: :environment do
    Availability.delete_all(["available_on < ?", Date.today])
  end

end
