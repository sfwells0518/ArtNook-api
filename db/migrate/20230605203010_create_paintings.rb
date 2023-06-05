class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.integer :artist_id
      t.string :description
      t.integer :year
      t.decimal :price
      t.integer :painting_category_id

      t.timestamps
    end
  end
end
