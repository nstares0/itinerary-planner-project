class CreateDestinationsCompanions < ActiveRecord::Migration
  def change
    create_table :destinations_companions do |t|
      t.integer :destination_id
      t.integer :companion_id

      t.timestamps null: false
    end
  end
end
