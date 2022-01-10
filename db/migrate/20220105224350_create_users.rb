class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.text :email, null: false, index: { unique: true }, comment: "User email and login"
      t.text :password_digest, null: false, comment: "Password"
      t.text :first_name, null: false, comment: "First name"
      t.text :second_name

      t.timestamps
    end
  end
end
