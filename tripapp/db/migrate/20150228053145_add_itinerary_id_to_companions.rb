class AddItineraryIdToCompanions < ActiveRecord::Migration
  def change
    add_column :companions, :itinerary_id, :integer
  end
end
