class AddReferenceToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :reference, :string
  end
end
