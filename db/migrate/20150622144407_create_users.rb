class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :address
      t.integer :zipcode
      t.string :city
      t.string :user_name
      t.string :sex
      t.text :description

      t.timestamps null: false
    end
  end
end
