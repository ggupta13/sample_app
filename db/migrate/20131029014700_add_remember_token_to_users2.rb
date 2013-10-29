class AddRememberTokenToUsers2 < ActiveRecord::Migration
  def change
    add_column :user2s, :remember_token, :string
    add_index  :user2s, :remember_token
  end
end
