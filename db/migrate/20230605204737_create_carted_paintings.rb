class CreateCartedPaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_paintings do |t|
      t.integer :user_id
      t.integer :painting_id
      t.integer :quantity
      t.integer :order_id
      t.string :status

      t.timestamps
    end
  end
end
