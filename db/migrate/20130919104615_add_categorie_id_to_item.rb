class AddCategorieIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :categorie_id, :integer
  end
end
