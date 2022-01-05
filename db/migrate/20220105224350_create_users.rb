class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.text :email, index: true, unique: true, comment: "User email and login"
      t.text :password, comment: "Password"
      t.text :first_name
      t.text :second_name

      t.timestamps
    end
  end
end
