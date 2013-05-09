class Brewery < ActiveRecord::Base
  attr_accessible :brewerygroup_id, :country_id, :name, :site
  has_many :beers
  belongs_to :country
end
