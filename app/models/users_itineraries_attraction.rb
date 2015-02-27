class UsersItinerariesAttraction < ActiveRecord::Base
  validates :user_id, uniqueness: {scope: :attraction_id}
  validates :user_id, uniqueness: {scope: :itinerary_id}

end
