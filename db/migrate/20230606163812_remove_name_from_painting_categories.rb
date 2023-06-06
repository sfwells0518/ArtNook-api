class RemoveNameFromPaintingCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :painting_categories, :name, :string
  end
end
