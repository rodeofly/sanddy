class AddAvatarToElements < ActiveRecord::Migration
  def change
    add_column :elements, :avatar, :string
  end
end
