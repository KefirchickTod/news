class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|

      t.integer :permissions_category_id, comment: "Category permissions"


      t.timestamps
    end
  end
end
