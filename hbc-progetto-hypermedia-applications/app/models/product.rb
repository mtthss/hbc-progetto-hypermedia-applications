class Product < ActiveRecord::Base

  has_and_belongs_to_many :designers
  has_and_belongs_to_many :services
  has_and_belongs_to_many :events
  has_and_belongs_to_many :shops
  has_many :product_images
  has_and_belongs_to_many :suggested_products,
                          :class_name => "Product",
                          :association_foreign_key => "suggested_product_id",
                          :join_table => "products_suggested_products"


  attr_accessible :description, :must_have, :name, :on_market_on, :suggested_product_id, :datasheet, :type, :image_url
end
