class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|

      t.text :title

      t.integer :user_id

      t.belongs_to :users, foreign_key: true

      t.timestamps
    end
  end
end
