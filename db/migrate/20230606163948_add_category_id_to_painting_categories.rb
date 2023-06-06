class AddCategoryIdToPaintingCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :painting_categories, :category_id, :integer
  end
end
