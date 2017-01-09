class ItemSerializer < ActiveModel::Serializer
  attributes :id,
            :name,
            :continent_id,
            :country_id,
            :city_id,
            :latitude,
            :longitude,
            :address,
            :phone,
            :item_type,
            :image_url,
            :budget
end