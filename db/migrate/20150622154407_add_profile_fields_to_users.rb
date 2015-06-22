class AddProfileFieldsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.integer :zipcode
      t.string :city
      t.string :user_name
      t.string :sex
      t.text :description
    end
  end
end
