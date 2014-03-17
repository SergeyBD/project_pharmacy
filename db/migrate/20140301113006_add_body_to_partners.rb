class AddBodyToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :body, :text
  end
end
