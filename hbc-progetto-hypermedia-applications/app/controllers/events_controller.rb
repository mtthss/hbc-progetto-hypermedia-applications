class EventsController < ApplicationController

  before_filter :confirm_logged_in, :only => [:new, :create]

  def index
    @events=Event.all
  end

  def show
    @event=Event.find(params[:id])
    @images=@event.event_images
  end

  def new
    render layout: "admin_layout"
    @event=Event.new
  end

  def create
  end

  def exposed_products
    @event=Event.find(params[:id])
    @products=@event.products.order('name ASC')
  end

end