class Event < ActiveRecord::Base

  has_and_belongs_to_many :products
  has_many :event_images

  attr_accessible :date, :description, :location, :name, :image_url

end
