class CreateCervejarias < ActiveRecord::Migration
  def change
    create_table :cervejarias do |t|
      t.string :nome
      t.text :descricao
      t.string :site
      t.integer :pais_id
      t.integer :grupocervejaria_id

      t.timestamps
    end
  end
end
