class Companion < ActiveRecord::Base
  has_many :destinations, through: :destinations_companions
  has_many :destinations_companions, dependent: :destroy

  has_many :itineraries, through: :itineraries_companions
  has_many :itineraries_companions, dependent: :destroy  
  
  has_many :reviews, as: :reviewable

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end

