class RemoveArtistIdFromPaintingCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :painting_categories, :artist_id, :integer
  end
end
