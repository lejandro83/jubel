class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :continent_id
      t.integer :country_id
      t.integer :city_id
      t.decimal :latitude , precision:9,scale:6
      t.decimal :longitude, precision:9,scale:6
      t.string :address
      t.string :phone
      t.integer :item_type
      t.string :image_url
      t.string :budget

      t.timestamps
    end
  end
end
