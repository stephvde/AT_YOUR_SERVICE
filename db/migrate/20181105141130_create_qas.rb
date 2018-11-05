class CreateQas < ActiveRecord::Migration[5.2]
  def change
    create_table :qas do |t|
      t.text :question
      t.text :answer
      t.references :booking, foreign_key: true
      t.timestamps
    end
  end
end
