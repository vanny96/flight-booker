# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.delete_all
Flight.delete_all

City.create(
  name: "NYC"
)
City.create(
  name: "SFO"
)

Flight.create(
  destination_id: 1,
  departure_id: 2,
  take_off: Time.new(2019, 7, 8, 10)
)

Flight.create(
  destination_id: 1,
  departure_id: 2,
  take_off: Time.new(2019, 7, 8, 15)
)

Flight.create(
  destination_id: 1,
  departure_id: 2,
  take_off: Time.new(2019, 7, 9, 10)
)

Flight.create(
  destination_id: 1,
  departure_id: 2,
  take_off: Time.new(2019, 7, 10, 10)
)

User.create(
  name: "test",
  email: "test@mail.com",
  password: "abcdef",
  password_confirmation: "abcdef"
)