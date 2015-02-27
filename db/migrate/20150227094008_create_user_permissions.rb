class CreateUserPermissions < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
      t.integer :user_id
      t.string :permission_name

      t.timestamps null: false
    end
  end
end
