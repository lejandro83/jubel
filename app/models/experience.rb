class Experience < ApplicationRecord
  belongs_to :user
  has_one :trip
  has_one :status

  def itineraries
    @itineraries ||= Itinerary.where(id: self.itinerary)
    @itineraries
  end
end
