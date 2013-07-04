class ProductType < ActiveRecord::Base
  attr_accessible :name, :image_url

  has_many :products
end
