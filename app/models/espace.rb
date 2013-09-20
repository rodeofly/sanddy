class Espace < ActiveRecord::Base
  has_many :ensembles through: :ensemblesEspaces
end
