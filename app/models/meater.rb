class Meater < ApplicationRecord
  has_many :bookings
  validates :last_name, uniqueness: true
  validates :first_name, uniqueness: true

end
