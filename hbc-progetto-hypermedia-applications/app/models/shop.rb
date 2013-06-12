class Shop < ActiveRecord::Base

 has_and_belongs_to_many :products

  attr_accessible :address, :description, :email, :name, :provincia, :regione, :tel, :type
end
