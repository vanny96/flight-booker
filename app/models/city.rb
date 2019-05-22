class City < ApplicationRecord
  has_many :arriving_flights, class_name: 'Flight', 
            foreign_key: 'destination_id', dependent: :destroy
  has_many :leaving_flights, class_name: 'Flight', 
            foreign_key: 'departure_id', dependent: :destroy
end
