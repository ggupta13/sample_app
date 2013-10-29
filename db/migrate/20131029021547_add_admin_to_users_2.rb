class AddAdminToUsers2 < ActiveRecord::Migration
  def change
    add_column :user2s, :admin, :boolean, default: false
  end
end
