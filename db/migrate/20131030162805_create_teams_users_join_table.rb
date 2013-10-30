class CreateTeamsUsersJoinTable < ActiveRecord::Migration
  def change
	  create_table :teams_user2s, :id => false do |t|
      t.integer :team_id
      t.integer :user2_id
    end
    add_index :teams_user2s, [:team_id, :user2_id]
  end
end
