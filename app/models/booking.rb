class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  validates :guests, presence: true
  validates :user, presence: true
  validates :place, presence: true
end
