class CustomerImage < ActiveRecord::Base
  attr_accessible :image_url, :customer_id

  belongs_to :customer

end
