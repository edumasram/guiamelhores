class CreateCervejas < ActiveRecord::Migration
  def change
    create_table :cervejas do |t|
      t.string :nome
      t.text :descricao
      t.integer :cervejaria_id
      t.integer :estilocerveja_id
      t.integer :pais_id
      t.integer :importadora_id
      t.decimal :graducao, :precision => 3, :scale => 1
      t.string :temperatura
      t.string :site

      t.timestamps
    end
  end
end
