class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :name
      t.date :date

      t.timestamps null: false
    end
    add_index :destinations, :itinerary_id
  end
end
