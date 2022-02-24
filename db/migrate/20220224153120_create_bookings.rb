class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :house_name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
