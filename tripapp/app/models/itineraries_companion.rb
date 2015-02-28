class ItinerariesCompanion < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :companion

  validates :itinerary_id, uniqueness: {scope: :companion_id}  
end
