class ItemType < ApplicationRecord
  belongs_to :item
  enum description: [:destination, :accomodation, :activity, :transportation, :eat, :culture, :party, :drink]
end
