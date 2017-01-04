class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :path
      t.integer :continent_id
      t.integer :country_id
      t.string :season
      t.integer :budget
      t.string :keyword
      t.integer :status_id
      t.integer :group_id
      t.string :log_notes
      t.string :transportation_notes
      t.string :accomodation_notes

      t.timestamps
    end
  end
end
