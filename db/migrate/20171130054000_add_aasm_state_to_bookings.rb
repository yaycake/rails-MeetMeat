class AddAasmStateToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :aasm_state, :string
  end
end
