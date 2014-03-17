class AddTimesInShares < ActiveRecord::Migration
  def change
    add_column :shares, :start_time, :datetime
    add_column :shares, :end_time, :datetime
  end
end
