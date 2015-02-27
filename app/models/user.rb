class User < ActiveRecord::Base
   has_secure_password

  has_many :reviews, dependent: :destroy
  has_many :users_itineraries_attractions
  has_many :itineraries, through: :users_itineraries_attractions
  has_many :attractions, through: :users_itineraries_attractions

  validates :first_name, :last_name, presence: true

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def confirm(password_param)
    authenticate(password_param)
  end
end
