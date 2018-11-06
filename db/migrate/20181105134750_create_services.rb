class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.references :category, foreign_key: true
      t.text :description
      t.integer :hourly_rate
      t.timestamps
    end
  end
end
