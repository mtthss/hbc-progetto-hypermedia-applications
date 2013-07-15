class ProductImagesController < ApplicationController
  def index
    @product_id=params[:product_id]
    @product_name=Product.find_by_id(@product_id).name
  end
  def new
    @product_image=ProductImage.new
    @product_id=params[:product_id]
  end

  def create
    image_io = params[:product_image][:image_url]
    unless image_io==nil
      File.open(Rails.root.join('public','products', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:product_image][:image_url] = image_io.original_filename
    end
    product_image=ProductImage.new(params[:product_image])

    if product_image.save
      flash[:notice]= "Picture added successfully to photogallery!"
      redirect_to controller: 'product_images', action: 'index', product_id: product_image.product_id
    else
      flash[:notice]= "Error in picture creation."
      render 'new'
    end
  end
end
