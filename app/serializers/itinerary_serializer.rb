class ItinerarySerializer < ActiveModel::Serializer
  attributes :id,
              :date,
              :time_start,
              :time_end,
              :price,
              :image_url,
              :reservation_code,
              :description,
              :payment_status,
              :created_at,
              :updated_at

end
