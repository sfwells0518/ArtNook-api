class AddDateOfBirthToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :date_of_birth, :string
  end
end
