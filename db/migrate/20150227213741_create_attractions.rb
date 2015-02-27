class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :location
      t.date :date

      t.timestamps null: false
    end
  end
end
