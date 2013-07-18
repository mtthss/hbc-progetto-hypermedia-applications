class Service < ActiveRecord::Base

 has_and_belongs_to_many :products

  attr_accessible :description, :name, :image_url
end
