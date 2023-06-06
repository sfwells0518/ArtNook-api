class RemoveDateOfBirthFromArtists < ActiveRecord::Migration[7.0]
  def change
    remove_column :artists, :date_of_birth, :integer
  end
end
