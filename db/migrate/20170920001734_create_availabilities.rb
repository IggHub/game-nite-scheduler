class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.date :available_on
      t.integer :available_hour
      t.integer :user_id

      t.timestamps
    end
  end
end
