class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.integer :user2_id
      t.string :team_name

      t.timestamps
    end
    add_index :teams, [:team_id, :user2_id]
  end
end
