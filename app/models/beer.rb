class Beer < ActiveRecord::Base
  attr_accessible :beerstyle_id, :brewery_id, :country_id, :description, :grad, :name, :site, :temp
  belongs_to :brewery
  belongs_to :beerstyle
end
