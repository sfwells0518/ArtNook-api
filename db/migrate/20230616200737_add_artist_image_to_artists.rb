class AddArtistImageToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :artist_image, :string
  end
end
