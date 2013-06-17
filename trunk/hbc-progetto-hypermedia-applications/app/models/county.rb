class County < ActiveRecord::Base
  attr_accessible :name, :region

  belongs_to :region
end
