class ExperienceSerializer < ActiveModel::Serializer
  attributes :id,
              :path,
              :name , 
              :continent_id, 
              :country_id,
              :season,
              :budget,
              :keyword,
              :status,
              :client,
              :guests,
              :itinerary_detail,
              :log_notes,
              :transportation_notes,
              :accomodation_notes

  def itinerary_detail
    ActiveModel::Serializer::CollectionSerializer.new(object.itineraries)
    # @activities = Array.new
    # itinerary.each do |activity|
    #   @activities << Itinerary.find(activity)
    # end
    # # @activities
  end

  def client
    ActiveModel::Serializer::CollectionSerializer.new(object.client)    
  end

end