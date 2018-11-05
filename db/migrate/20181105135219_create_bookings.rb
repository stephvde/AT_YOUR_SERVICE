class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :description
      t.string :status
      t.integer :price
      t.integer :hours
      t.date :date
      t.string :city
      t.string :street
      t.string :number
      t.integer :zip_code
      t.string :country
      t.timestamps
    end
  end
end
