class CreateTris < ActiveRecord::Migration
  def change
    create_table :tris do |t|
      t.string :title
      t.integer :urne_id

      t.timestamps
    end
  end
end
