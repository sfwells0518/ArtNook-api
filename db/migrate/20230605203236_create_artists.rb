class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :date_of_birth
      t.string :birthplace
      t.string :fun_fact
      t.integer :painting_category_id

      t.timestamps
    end
  end
end
