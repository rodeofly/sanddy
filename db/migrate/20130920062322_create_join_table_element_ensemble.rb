class CreateJoinTableElementEnsemble < ActiveRecord::Migration
  def change
    create_join_table :elements, :ensembles do |t|
      t.index [:element_id, :ensemble_id]
      t.index [:ensemble_id, :element_id]
    end
  end
end
