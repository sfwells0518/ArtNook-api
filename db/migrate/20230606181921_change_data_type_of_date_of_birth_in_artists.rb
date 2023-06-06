class ChangeDataTypeOfDateOfBirthInArtists < ActiveRecord::Migration[7.0]
  def change
    change_column :artists, :date_of_birth, :string 
  end
end
