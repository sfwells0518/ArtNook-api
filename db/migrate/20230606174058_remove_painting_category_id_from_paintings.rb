class RemovePaintingCategoryIdFromPaintings < ActiveRecord::Migration[7.0]
  def change
    remove_column :paintings, :painting_category_id, :integer
  end
end
