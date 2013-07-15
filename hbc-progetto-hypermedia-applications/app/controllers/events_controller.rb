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
    @event=Event.new
    render layout: "admin_layout"
  end

  def create

    image_io = params[:event][:image_url]
    File.open(Rails.root.join('public','events', image_io.original_filename), 'wb') do |file|
      file.write(image_io.read)
    end
    params[:event][:image_url] = image_io.original_filename

    event=Event.new(params[:event])

    if event.save
      flash[:notice]= "Event created successfully!"
      redirect_to controller: 'event_images', action: 'index', event_id: event.id
    else
      flash[:notice]= "Error in event creation. Check out that all the fields are fill in correctly"
      render 'new'
    end

  end

  def exposed_products
    @event=Event.find(params[:id])
    @products=@event.products.order('name ASC')
  end

end