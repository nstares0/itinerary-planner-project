class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :location
      t.string :name
      t.date :attration_date

      t.timestamps null: false
    end
  end
end
