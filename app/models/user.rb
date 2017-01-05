class User < ApplicationRecord
  has_many :experiences, dependent: :destroy
  enum user_type: [:unlimited , :new_jubel_experiences, :new_destinations, :users, :customers]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
