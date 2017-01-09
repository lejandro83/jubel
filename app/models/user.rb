class User < ApplicationRecord
  has_many :experiences, dependent: :destroy
  enum user_type: [:unlimited , :new_jubel_experiences, :new_destinations, :users, :customers]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :by_name, ->(name) { where("first_name ILIKE ? OR last_name ILIKE ?", "#{name}%", "#{name}%")}

  scope :contains, ->(name) { where("CONCAT_WS(' ', unaccent(first_name), unaccent(last_name)) ILIKE unaccent(?)", "%#{name}%") }

  def user_type?(_type)
    self.user_type == _type    
  end

  def full_name
    [first_name, last_name].compact.join(' ')
  end

end
