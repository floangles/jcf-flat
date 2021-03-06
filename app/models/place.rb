class Place < ActiveRecord::Base
  has_many :bookings
  belongs_to :user

  has_attached_file :picture,
    styles: { large: "900x900>", medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/place/:style/missing.png"

  validates_attachment_content_type :picture,
  content_type: /\Aimage\/.*\z/


  geocoded_by :full_address
  after_validation :geocode, if: ->(place) { place.address_changed? || place.city_changed? || place.zipcode_changed? }

  def full_address
    "#{address}, #{zipcode}, #{city}"
  end

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
