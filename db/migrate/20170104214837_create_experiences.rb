class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :path
      t.boolean :split_account
      t.integer :continent_id
      t.date :start_date
      t.decimal :total_due, precision:8,scale:2
      t.date :end_date
      t.integer :number_of_guests
      t.integer :country_id
      t.integer :city_id
      t.string :season
      t.integer :itinerary, array:true, default: []
      t.decimal :budget, precision: 8 , scale:2
      t.string :keyword
      t.integer :status_id
      t.integer :guests, default:[] , array: true
      t.string :log_notes
      t.string :transportation_notes
      t.string :accomodation_notes
      t.integer :user_id

      t.timestamps
    end
  end
end
