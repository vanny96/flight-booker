class Flight < ApplicationRecord
  belongs_to :destination, class_name: 'City'
  belongs_to :departure, class_name: 'City'
  has_many :bookings

  validates :destination, presence: true
  validates :departure, presence: true
  validates :take_off, presence: true
end
