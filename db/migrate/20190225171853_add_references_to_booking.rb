class AddReferencesToBooking < ActiveRecord::Migration[5.2]
  def change
  	add_reference :bookings, :surf_company, index: true
  	add_reference :bookings, :user, index: true
  end
end
