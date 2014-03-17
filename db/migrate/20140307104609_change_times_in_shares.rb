class ChangeTimesInShares < ActiveRecord::Migration
  def change
    change_column :shares, :start_time, :string
    change_column :shares, :end_time, :string
    add_column :shares, :body, :text
  end
end
