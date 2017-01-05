class Experience < ApplicationRecord
  belongs_to :user
  has_one :trip
  has_one :status
end
