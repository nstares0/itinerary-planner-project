class RemoveCompanionIdFromItineraries < ActiveRecord::Migration
  def up
    remove_column :itineraries, :companion_id, :integer
  end

  def down
    add_column :itineraries, :companion_id, :integer
  end  
end
