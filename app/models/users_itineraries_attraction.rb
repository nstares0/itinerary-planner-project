class UsersItinerariesAttraction < ActiveRecord::Base

  belongs_to :itineraries
  belongs_to :attractions
  belongs_to :users

  validates :user_id, uniqueness: {scope: :attraction_id}
  validates :user_id, uniqueness: {scope: :itinerary_id}

end
