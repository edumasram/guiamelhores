class RemoveBeerStyleIdFromBeers < ActiveRecord::Migration
  def up
    remove_column :beers, :beer_style_id
  end

  def down
    add_column :beers, :beer_style_id, :integer
  end
end
