class Echantillon < ActiveRecord::Base
  belongs_to :categorie
  belongs_to :urne
end
