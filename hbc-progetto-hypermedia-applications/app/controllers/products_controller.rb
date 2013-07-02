class ProductsController < ApplicationController
  def index
    if(params[:type])
      @products=Product.find(params[:type])
    elsif(params[:must])
      @products=Product.where(:must_have=>true)
    elsif(params[:new])
      @products=Product.order('on_market_on DESC').limit(9)
    else
      @products=Product.all
    end
  end

  def show
    @product=Product.find(params[:product_id])
    @matches=@product.suggested_products
    @events=@product.events
    @images=@product.images
    @designers=@product.designers
  end

  def new
    @product=Product.new
  end

  def create
    #image_io = params[:console][:image_url]
    #File.open(Rails.root.join('public','consoles', image_io.original_filename), 'wb') do |file|
    #  file.write(image_io.read)
    #end
    #params[:console][:image_url] = image_io.original_filename
    #Console.create(params[:console])
    #redirect_to admins_path
  end

  def datasheet
    @product=Product.find(params[:id])
    @services=@product.services
    @events=@product.events
    @images=@product.images
    @designers=@product.designers
  end

  def shops_for_this_product
    @product=Product.find(params[:id])
    @shops=@product.shops
  end

end