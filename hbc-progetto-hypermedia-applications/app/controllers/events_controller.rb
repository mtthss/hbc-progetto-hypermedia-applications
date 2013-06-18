class EventsController < ApplicationController
  def index
    @events=Event.all
  end

  def show
    @event=Event.find(params[:id])
  end

  def new
    @event=Event.new
  end

  def create
  end

  def exposed_products
    @event=Event.find(params[:id])
    @products=@event.products.order('name ASC')
  end

end
