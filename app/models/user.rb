class User < ApplicationRecord
  has_many :bookings
  
  has_secure_password
end
