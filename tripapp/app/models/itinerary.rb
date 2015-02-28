class Itinerary < ActiveRecord::Base
  has_many :destinations, dependent: :destroy
  has_many :companions, through: :itineraries_companions
  has_many :itineraries_companions, dependent: :destroy
  has_many :reviews, as: :reviewable

  belongs_to :user

  validates :name, :origin, :destination, presence: true
end