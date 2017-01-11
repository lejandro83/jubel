class SimpleClientSerializer < ActiveModel::Serializer
  attributes :id,
            :full_name,
            :phone,
            :email,
            :city_id

end