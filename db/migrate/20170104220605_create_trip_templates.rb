class CreateTripTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_templates do |t|
      t.integer :items, array:true, default: []

      t.timestamps
    end
  end
end
