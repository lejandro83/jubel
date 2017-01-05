class Status < ApplicationRecord
  belongs_to :experience
  enum name: [:new_experience , :on_hold, :waiting_to_happen, :going_on, :archived, :template]
end
