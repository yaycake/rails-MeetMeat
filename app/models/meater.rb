class Meater < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :meaters, :foreign_key => :meater_id
  has_many :meats, :through => :meaters, :source => :meat_id
  has_many :bookings

  # validates :last_name, uniqueness: true, presence: true
  # validates :first_name, uniqueness: true, presence: true

end
