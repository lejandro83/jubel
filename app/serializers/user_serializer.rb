class UserSerializer < ActiveModel::Serializer
  attributes :id,
              :email,
              :full_name,
              :first_name,
              :last_name,
              :user_type,
              :country_id,
              :city_id,
              :continent_id,
              :phone,
              :date_of_birth
end
