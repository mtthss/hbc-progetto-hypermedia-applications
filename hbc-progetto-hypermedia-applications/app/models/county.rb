class County < ActiveRecord::Base
  attr_accessible :name, :country

  belongs_to :country
end
