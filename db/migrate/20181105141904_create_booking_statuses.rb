class CreateBookingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_statuses do |t|
      t.string :status
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
