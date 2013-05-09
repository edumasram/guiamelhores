class Cervejaria < ActiveRecord::Base
  attr_accessible :descricao, :grupocervejaria_id, :nome, :pais_id, :site
end
