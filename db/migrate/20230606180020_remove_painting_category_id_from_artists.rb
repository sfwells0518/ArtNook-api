class RemovePaintingCategoryIdFromArtists < ActiveRecord::Migration[7.0]
  def change
    remove_column :artists, :painting_category_id, :integer
  end
end
