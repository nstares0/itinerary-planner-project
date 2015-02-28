class RemoveItineraryIdFromCompanions < ActiveRecord::Migration
  def up
    remove_column :companions, :itinerary_id, :integer
  end

  def down
    add_column :companions, :itinerary_id, :integer
  end  
end



