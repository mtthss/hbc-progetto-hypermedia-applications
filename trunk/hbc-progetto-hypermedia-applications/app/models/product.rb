class Product < ActiveRecord::Base

  belongs_to :product_type
  belongs_to :partner
  has_and_belongs_to_many :designers
  has_and_belongs_to_many :services
  has_and_belongs_to_many :events
  has_and_belongs_to_many :shops
  has_many :product_images
  has_and_belongs_to_many :suggested_products,
                          :class_name => "Product",
                          :association_foreign_key => "suggested_product_id",
                          :join_table => "products_suggested_products"


  attr_accessible :description, :must_have, :name, :on_market_on, :suggested_product_id, :datasheet, :partnership,
                  :product_type_id, :image_url, :tech_image_url
end
