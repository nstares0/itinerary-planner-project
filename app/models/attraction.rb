class Attraction < ActiveRecord::Base
  belongs_to :itineraries
  has_many :reviews, as: :reviewable
  has_many :users, through: :users_itineraries_attractions
  validates :name, :date, presence: true
end
