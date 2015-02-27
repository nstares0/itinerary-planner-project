class Itinerary < ActiveRecord::Base
  has_many :attractions, dependent: :destroy
  has_many :users, through: :users_itineraries_attractions

  has_many :reviews, as: :reviewable

  validates :start_date, :end_date, :destination, :name, presence: true
  
end
