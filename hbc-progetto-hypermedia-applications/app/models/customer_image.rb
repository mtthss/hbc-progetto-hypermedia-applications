class CustomerImage < ActiveRecord::Base
  attr_accessible :image_url

  belongs_to :customer

end