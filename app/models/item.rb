class Item < ApplicationRecord
  enum item_type: [:destinations , :accomodation, :activities, :transportation, 
    :eat, :culture, :party, :drink]
  
  scope :by_name, ->(name) { where("name ILIKE ?", "#{name}%")}

  scope :by_type, ->(item_type) { where("item_type = ?", item_type)}

end
