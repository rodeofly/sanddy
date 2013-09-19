class CreateEchantillons < ActiveRecord::Migration
  def change
    create_table :echantillons do |t|
      t.string :title
      t.integer :categorie_id
      t.integer :urne_id

      t.timestamps
    end
  end
end
