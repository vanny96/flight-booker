class AddReferencesToFlight < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :destination_id, :integer
    add_column :flights, :departure_id, :integer
    add_index :flights, :destination_id
    add_index :flights, :departure_id
  end
end
