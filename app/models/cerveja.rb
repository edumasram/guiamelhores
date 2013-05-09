class Cerveja < ActiveRecord::Base
  attr_accessible :Brewery_id, :descricao, :estilocerveja_id, :graducao, :importadora_id, :nome, :pais_id, :site, :temperatura
  extend FriendlyId
  friendly_id :nome
  belongs_to :brewery
end
