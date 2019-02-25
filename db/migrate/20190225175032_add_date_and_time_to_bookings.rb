class AddDateAndTimeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :string
    add_column :bookings, :time, :string
  end
end
