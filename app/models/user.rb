class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :places

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/user/:style/missing.png"

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  validates :first_name, presence: true, on: :update
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, on: :update
  validates :address, presence: true, on: :update
  validates :zipcode, presence: true, on: :update
  validates :city, presence: true, on: :update
  validates :sex, presence: true, on: :update
  validates :description, presence: true, on: :update
end
