class RemoveApprovedFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :approved, :boolean
  end
end
