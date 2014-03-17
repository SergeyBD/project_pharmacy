class CreatePreparations < ActiveRecord::Migration
  def change
    create_table :preparations do |t|
      t.string :name
      t.string :manufacturer
      t.string :agent
      t.decimal :price

      t.timestamps
    end
  end
end
