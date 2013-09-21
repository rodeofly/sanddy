class AddAvatarToEnsembles < ActiveRecord::Migration
  def change
    add_column :ensembles, :avatar, :string
  end
end
