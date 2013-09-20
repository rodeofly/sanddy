class CreateEspaces < ActiveRecord::Migration
  def change
    create_table :espaces do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.integer :top
      t.integer :left

      t.timestamps
    end
  end
end
