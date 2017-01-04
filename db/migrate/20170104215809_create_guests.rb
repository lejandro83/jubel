class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :city_id
      t.integer :country_id
      t.date :birthday
      t.decimal :amount_payed, precision:8,scale:2
      t.integer :total_due

      t.timestamps
    end
  end
end
