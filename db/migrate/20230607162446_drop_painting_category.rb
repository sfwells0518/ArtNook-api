class DropPaintingCategory < ActiveRecord::Migration[7.0]
  def up
    drop_table :painting_categories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
