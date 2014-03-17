class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :store_id
      t.integer :preparation_id

      t.timestamps
    end
    add_index :relationships, :store_id
    add_index :relationships, :preparation_id
    add_index :relationships, [:store_id, :preparation_id], unique: true
  end
end
