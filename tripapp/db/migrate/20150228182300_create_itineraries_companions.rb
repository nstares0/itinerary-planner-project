class CreateItinerariesCompanions < ActiveRecord::Migration
  def change
    create_table :itineraries_companions do |t|
      t.integer :itinerary_id
      t.integer :companion_id

      t.timestamps null: false
    end
  end
end
