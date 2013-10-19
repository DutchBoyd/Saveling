class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.money :price
      t.integer :owner_id
      t.integer :borrower_id
      t.integer :status_id
      t.timestamps
    end

    add_index :items, :owner_id
    add_index :items, :borrower_id
  end
end
