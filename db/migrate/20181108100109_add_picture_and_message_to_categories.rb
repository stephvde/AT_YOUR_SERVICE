class AddPictureAndMessageToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :photo, :string
    add_column :categories, :message, :text
  end
end
