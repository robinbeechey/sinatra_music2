class AddVoteInterger < ActiveRecord::Migration
  def change
    change_table :votes do |t|
      t.integer :vote
    end
  end
end
