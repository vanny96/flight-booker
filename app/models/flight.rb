class Flight < ApplicationRecord
  belongs_to :destination, class_name: 'City'
  belongs_to :departure, class_name: 'City'
  has_many :bookings

  validates :destination, presence: true
  validates :departure, presence: true
  validates :take_off, presence: true

  def Flight.from_city city
    where('departure_id = ?', city)
  end
  
  def Flight.to_city city
    where('destination_id = ?', city)
  end

  def Flight.leaving date
    where('take_off > ? AND take_off < ?', date.to_datetime, date.next)
  end
end
