class RemoveConductingTimeInShares < ActiveRecord::Migration
  def change
    remove_column :shares, :conducting_time
  end
end
