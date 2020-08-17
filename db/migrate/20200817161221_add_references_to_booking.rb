class AddReferencesToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :tool, null: false, foreign_key: true
  end
end
