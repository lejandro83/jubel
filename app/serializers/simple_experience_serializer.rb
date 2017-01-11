class SimpleExperienceSerializer < ActiveModel::Serializer
  attributes :id,
              :path,
              :name , 
              :continent_id, 
              :country_id,
              :season,
              :budget,
              :keyword,
              :status,
              :simple_client

  def simple_client
    SimpleClientSerializer.new(object.client)
  end

end