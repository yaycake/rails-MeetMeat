class Booking < ApplicationRecord
  belongs_to :meater, :class_name => :Meater
  belongs_to :meat, :class_name => :Meater

  validates :description, presence: true

end
