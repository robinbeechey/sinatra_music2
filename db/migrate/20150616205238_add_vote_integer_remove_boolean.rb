class AddVoteIntegerRemoveBoolean < ActiveRecord::Migration
  def change
    remove_column :votes, :vote, :boolean
  end
end
