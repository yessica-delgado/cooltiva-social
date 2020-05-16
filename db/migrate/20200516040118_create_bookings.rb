class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
