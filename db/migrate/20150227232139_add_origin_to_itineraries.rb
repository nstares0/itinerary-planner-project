class AddOriginToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :origin, :string
  end
end
