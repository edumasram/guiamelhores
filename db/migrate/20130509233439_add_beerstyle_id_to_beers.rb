class AddBeerstyleIdToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :beerstyle_id, :integer
  end
end
