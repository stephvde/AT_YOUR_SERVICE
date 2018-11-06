class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :description
      t.references :booking_status
      t.integer :price
      t.integer :hours
      t.string :city
      t.string :street
      t.string :number
      t.integer :zip_code
      t.string :country
      t.references :service
      t.timestamps
    end
  end
end
