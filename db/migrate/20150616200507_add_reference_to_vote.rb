class AddReferenceToVote < ActiveRecord::Migration
  def change
    change_table :votes do |t|
      t.belongs_to :song
      t.belongs_to :user
    end
  end
end
