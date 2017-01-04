class CreateItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :itineraries do |t|
      t.integer :item_id
      t.date :date
      t.time :time_start
      t.time :time_end
      t.decimal :price, precision:8,scale:2
      t.string :image_url
      t.string :reservation_code
      t.string :description
      t.boolean :payment_status

      t.timestamps
    end
  end
end
