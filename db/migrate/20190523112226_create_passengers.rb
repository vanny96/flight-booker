class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.column :name, :string
      t.column :email, :string
      t.timestamps
    end
  end
end
