class AddAvatarToEspaces < ActiveRecord::Migration
  def change
    add_column :espaces, :avatar, :string
  end
end
