class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :number_of_guests
      t.decimal :budget,precision:8,scale:2
      t.date :start_date
      t.date :end_date
      t.decimal :total_due, precision:8,scale:2
      t.boolean :split_account
      t.integer :experience_id
      t.integer :itinerary, array:true, default: []

      t.timestamps
    end
  end
end
