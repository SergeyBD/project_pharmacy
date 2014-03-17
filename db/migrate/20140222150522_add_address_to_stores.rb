class AddAddressToStores < ActiveRecord::Migration
  def change
    add_column :stores, :address, :string
    add_column :stores, :telephone, :string
    add_column :stores, :operation_hours, :string
  end
end
