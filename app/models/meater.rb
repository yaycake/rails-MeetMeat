class Meater < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  has_many :meaters, :foreign_key => :meater_id
  has_many :meats, :through => :meaters, :source => :meat_id
  has_many :bookings

  # validates :last_name, uniqueness: true, presence: true
  # validates :first_name, uniqueness: true, presence: true
  def self.find_for_facebook_oauth(auth)
    # binding.pry
    meater_params = auth.slice(:provider, :uid)
    meater_params.merge! auth.info.slice(:email, :first_name, :last_name)
    meater_params[:email] = auth.info.email
    meater_params[:email] ||= "facebook-#{auth.uid}@xinroukuaile.com"
    # meater_params[:token] = auth.credentials.token
    meater_params[:location] = auth.info.user_location
    meater_params[:education] = auth.info.user_education_history
    # meater_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    meater_params = meater_params.to_h

    meater = Meater.find_by(provider: auth.provider, uid: auth.uid)
    meater ||= Meater.find_by(email: auth.info.email) # meater did a regular sign up in the past.
    if meater
      meater.update(meater_params)
    else
      meater = Meater.new(meater_params)
      meater.password = Devise.friendly_token[0,20]  # Fake password for validation
      meater.save
    end

    meater.remote_photo_url = auth.info.image
    meater.save

    return meater
  end

  def avatar_url
    photo_url || 'logo-03.png'
    # photo_url || 'logo-03.png'
  end
end
