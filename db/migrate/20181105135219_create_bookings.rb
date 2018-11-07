class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :description
      t.integer :price
      t.integer :hours
      t.string :city
      t.string :address
      t.integer :zip_code
      t.string :country
      t.datetime :date
      t.references :service, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
