class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.boolean :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
