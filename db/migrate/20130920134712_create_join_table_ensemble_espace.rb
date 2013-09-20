class CreateJoinTableEnsembleEspace < ActiveRecord::Migration
  def change
    create_join_table :ensembles, :espaces do |t|
      t.index [:ensemble_id, :espace_id]
      t.index [:espace_id, :ensemble_id]
    end
  end
end
