class EventImage < ActiveRecord::Base
  attr_accessible :image_url, :event_id

  belongs_to :event

end
