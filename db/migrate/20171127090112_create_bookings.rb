class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :meat_id
      t.integer :meater_id
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
