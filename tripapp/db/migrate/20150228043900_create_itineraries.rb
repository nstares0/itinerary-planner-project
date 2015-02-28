class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.date :departure_date
      t.date :return_date
      t.integer :companion_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :itineraries, :user_id
  end
end
