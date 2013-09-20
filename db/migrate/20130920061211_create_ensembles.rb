class CreateEnsembles < ActiveRecord::Migration
  def change
    create_table :ensembles do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.integer :top
      t.integer :left

      t.timestamps
    end
  end
end
