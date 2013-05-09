class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.integer :brewery_id
      t.integer :beerstyle_id
      t.integer :country_id
      t.decimal :grad, :precision => 3, :scale => 1
      t.string :temp
      t.string :site

      t.timestamps
    end
  end
end
