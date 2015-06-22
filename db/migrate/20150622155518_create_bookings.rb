class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :guests
      t.boolean :approved
      t.integer :guest_rating
      t.text :guest_comment
      t.integer :host_rating
      t.text :host_comment
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
