class Partner < ActiveRecord::Base
  attr_accessible :name, :website

  has_many :products
end
