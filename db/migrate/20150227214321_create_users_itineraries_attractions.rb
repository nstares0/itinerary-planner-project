class CreateUsersItinerariesAttractions < ActiveRecord::Migration
  def change
    create_table :users_itineraries_attractions do |t|
      t.integer :user_id
      t.integer :itinerary_id
      t.integer :attraction_id

      t.timestamps null: false
    end
  end
end
