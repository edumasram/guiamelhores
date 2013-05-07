class Cerveja < ActiveRecord::Base
  attr_accessible :cervejaria_id, :descricao, :estilocerveja_id, :graducao, :importadora_id, :nome, :pais_id, :site, :temperatura
end
