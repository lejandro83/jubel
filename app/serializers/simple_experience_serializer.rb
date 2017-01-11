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
              :client

  def simple_client
    SimpleClientSerializer.new(object.client)
  end

end