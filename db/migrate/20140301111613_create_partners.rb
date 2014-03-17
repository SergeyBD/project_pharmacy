class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :image_uid

      t.timestamps
    end
  end
end
