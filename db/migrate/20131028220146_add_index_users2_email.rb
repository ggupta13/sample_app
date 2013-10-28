class AddIndexUsers2Email < ActiveRecord::Migration
  def change
  	add_index :user2s, :email, unique: true
  end
end
