class Shop < ActiveRecord::Base

 has_and_belongs_to_many :products

  attr_accessible :address, :email, :name, :county, :country, :tel, :type
end
