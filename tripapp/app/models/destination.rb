class Destination < ActiveRecord::Base
  has_many :companions, through: :destinations_companions
  has_many :destinations_companions, dependent: :destroy

  has_many :reviews, as: :reviewable

  belongs_to :itinerary

  validates :location, :name, :date, presence: true

end