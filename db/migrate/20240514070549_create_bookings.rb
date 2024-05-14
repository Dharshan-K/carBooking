class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :bookingID
      t.integer :userID
      t.integer :carID
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end
