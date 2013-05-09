class RemoveBeerstyleIdFromBeers < ActiveRecord::Migration
  def up
    remove_column :beers, :beerstyle_id
  end

  def down
    add_column :beers, :beerstyle_id, :integer
  end
end
