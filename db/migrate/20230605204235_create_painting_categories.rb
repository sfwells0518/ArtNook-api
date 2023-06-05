class CreatePaintingCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :painting_categories do |t|
      t.string :name
      t.integer :painting_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
