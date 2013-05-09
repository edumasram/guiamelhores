class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :site
      t.integer :country_id
      t.integer :brewerygroup_id

      t.timestamps
    end
  end
end
