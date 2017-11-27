class Booking < ApplicationRecord
  belongs_to :meater_id, :class_name => 'meater'
  belongs_to :meat_id,  :class_name => 'meater'

  validates :description, presence: true

end
