class EventImagesController < ApplicationController
  def index
    @event_id=params[:event_id]
    @event_name=Event.find_by_id(@event_id).name
  end

  def new
      @event_image=EventImage.new
      @event_id=params[:event_id]
  end

  def create
      image_io = params[:event_image][:image_url]
      unless image_io==nil
        File.open(Rails.root.join('public','events', image_io.original_filename), 'wb') do |file|
          file.write(image_io.read)
        end
        params[:event_image][:image_url] = image_io.original_filename
      end
    event_image=EventImage.new(params[:event_image])

      if event_image.save
        flash[:notice]= "Picture added successfully to photogallery!"
      redirect_to controller: 'event_images', action: 'index', event_id: event_image.event_id
    else
      flash[:notice]= "Error in picture creation."
      render 'new'
    end
  end
end
