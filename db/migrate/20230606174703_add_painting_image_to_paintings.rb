class AddPaintingImageToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :painting_image, :string
  end
end
