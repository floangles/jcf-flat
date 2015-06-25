class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  validates :guests, presence: true
  validates :user, presence: true
  validates :place, presence: true
  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :status, inclusion: { in: ["Approved", "Refused"], allow_nil: true }
end
