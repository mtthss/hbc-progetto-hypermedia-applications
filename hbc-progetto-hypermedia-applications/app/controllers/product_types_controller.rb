class ProductTypesController < ApplicationController

  before_filter :confirm_logged_in, :only => [:new, :create]

  def index
    @product_types=ProductType.all
  end

  def new
    @product_type=ProductType.new
    render layout: "admin_layout"
  end

  def create
    product_type=ProductType.new(params[:product_type])

    image_io = params[:product][:image_url]
    File.open(Rails.root.join('public','product_types', image_io.original_filename), 'wb') do |file|
      file.write(image_io.read)
    end
    params[:product][:image_url] = image_io.original_filename

    if product_type.save
      flash[:notice]= "Product type created successfully!"
      redirect_to admins_path
    else
      flash[:notice]= "Error in product type creation. Check out that all the fields are fill in correctly"
      render 'new'
    end
  end
end
