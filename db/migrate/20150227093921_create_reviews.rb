class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :title
      t.text :comment

      t.timestamps null: false
    end
  end
end
