class AddPasswordToUser2s < ActiveRecord::Migration
  def change
    add_column :user2s, :password_digest, :string
  end
end
