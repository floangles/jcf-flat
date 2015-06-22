class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :city
      t.text :description
      t.integer :capacity
      t.integer :rooms
      t.integer :beds
      t.string :type
      t.integer :rate
      t.boolean :available

      t.timestamps null: false
    end
  end
end
