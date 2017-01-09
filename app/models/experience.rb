class Experience < ApplicationRecord
  belongs_to :user
  has_one :trip

  enum status: [:new_experience , :on_hold, :waiting_to_happen, :going_on, :archived, :template]

  scope :by_name, -> (name) { where('name = ?', name) }
  scope :by_status, -> (status) { where('status = ?', status) }
  # scope :by_specialty, lambda { |specialty_id|
  #   joins(:specialties).where('specialties.id = ?', specialty_id)
  # }
  # scope :by_name, -> (name) { where('name ILIKE ?', "%#{name}%") }

  def itineraries
    @itineraries ||= Itinerary.where(id: itinerary)
    @itineraries
  end

  def client
    @client ||= User.where(id: user_id)
    @client
  end
end
