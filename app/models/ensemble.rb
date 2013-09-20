class Ensemble < ActiveRecord::Base
  has_and_belongs_to_many :elements
  belongs_to :ensemble through: :ensemblesEspaces  
end
