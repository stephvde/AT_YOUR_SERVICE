class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.text :street
      t.string :number
      t.string :city
      t.string :country
      t.string :bank_account
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
