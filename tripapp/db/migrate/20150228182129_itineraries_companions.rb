class ItinerariesCompanions < ActiveRecord::Migration
  def change
    create_table :itineraries_companios do |t|
      t.integer :itineraries_id
      t.integer :companion_id

      t.timestamps null: false
    end    
  end
end
