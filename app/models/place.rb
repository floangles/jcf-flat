class Place < ActiveRecord::Base
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :rooms, presence: true
  validates :beds, presence: true
  validates :rate, presence: true
  validates :available, inclusion: { in: [true, false] }
end
