class Meater < ApplicationRecord
  has_many :bookings
  validates :last_name, uniqueness: true, presence: true
  validates :first_name, uniqueness: true, presence: true

end
