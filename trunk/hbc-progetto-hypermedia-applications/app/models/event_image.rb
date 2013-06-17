class EventImage < ActiveRecord::Base
  attr_accessible :image_url

  belongs_to :event

end
