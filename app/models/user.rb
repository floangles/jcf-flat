class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :places

  validates :first_name, uniqueness: { scope: :last_name }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :sex, presence: true
  validates :description, presence: true
end
