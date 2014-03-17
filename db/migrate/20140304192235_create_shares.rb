class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :name
      t.time :conducting_time
      t.string :image_uid

      t.timestamps
    end
  end
end
