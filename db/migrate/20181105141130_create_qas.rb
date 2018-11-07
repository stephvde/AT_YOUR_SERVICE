class CreateQas < ActiveRecord::Migration[5.2]
  def change
    create_table :qas do |t|
      t.text :message
      t.references :booking, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
