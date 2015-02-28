class User < ActiveRecord::Base
  has_secure_password
  
  has_many :itineraries, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :first_name, :last_name, presence: true, uniqueness: true

end