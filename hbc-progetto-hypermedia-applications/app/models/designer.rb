class Designer < ActiveRecord::Base
  attr_accessible :bio, :image, :name, :top
  has_and_belongs_to_many :products
end
