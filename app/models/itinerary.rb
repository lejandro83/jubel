class Itinerary < ApplicationRecord
  has_many :items

  def activity
    @activity ||= Item.where(id: item_id)
    @activity
  end
end
