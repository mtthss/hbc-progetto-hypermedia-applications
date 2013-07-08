class ProductImage < ActiveRecord::Base
  attr_accessible :image_url, :product_id

  belongs_to :product
end
