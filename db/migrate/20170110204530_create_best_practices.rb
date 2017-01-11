class CreateBestPractices < ActiveRecord::Migration[5.0]
  def change
    create_table :best_practices do |t|
      t.integer :region
      t.string :general_knowledge
      t.string :personal_safety
      t.string :driving_conditions
      t.string :tipping_and_money
      t.string :description      

      t.timestamps
    end
  end
end
