class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :width
      t.integer :height
      t.integer :top
      t.integer :left

      t.timestamps
    end
  end
end
