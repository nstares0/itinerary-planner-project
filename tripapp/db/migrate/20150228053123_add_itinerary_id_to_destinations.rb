class AddItineraryIdToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :itinerary_id, :integer
  end
end
