class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [ :facebook ]

  has_many :bookings, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :rentings, through: :places, source: :bookings

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

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.name = auth.info.name
      user.profile_picture = auth.info.image
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end




end
