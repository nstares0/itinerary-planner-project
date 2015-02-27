class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :destination

      t.timestamps null: false
    end
  end
end
