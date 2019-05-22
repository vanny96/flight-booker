class AddDependencesToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :flight_id, :integer
    add_column :bookings, :user_id, :integer
    add_index :bookings, :flight_id
    add_index :bookings, :user_id
  end
end
