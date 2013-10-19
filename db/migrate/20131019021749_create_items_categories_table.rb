class CreateItemsCategoriesTable < ActiveRecord::Migration
  def change
    create_table :items_categories, id: false do |t|
      t.references :item
      t.references :category
    end

    add_index :items_categories, [:category_id, :item_id]
    add_index :items_categories, :item_id
    add_index :items_categories, :category_id
  end
end
