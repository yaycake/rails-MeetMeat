class Booking < ApplicationRecord
  belongs_to :meater, :class_name => :Meater
  belongs_to :meat, :class_name => :Meater

  validates :description, presence: true

  include AASM

  aasm :column => "status" do
    state :unplaced, :initial => true
    state :sent
    state :agreed
    state :rejected
    state :finalized
    state :cancelled

    event :create do
      transitions :from => :unplaced, :to => :sent
    end

    event :agree do
      transitions :from => :sent, :to => :agreed
    end

    event :reject do
      transitions :from => :sent, :to => :rejected
    end

    event :finalize do
      transitions :from => :agreed, :to => :finalized
    end

    event :cancel do
      transitions :from => :agreed, :to => :cancelled
    end
  end
end
