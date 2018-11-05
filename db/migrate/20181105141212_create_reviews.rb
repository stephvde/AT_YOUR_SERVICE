class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :service_rating
      t.integer :provider_rating
      t.references :booking, foreign_key: true
      t.timestamps
    end
  end
end
