class ProductsController < ApplicationController
  def index
    if(params[:product_type_id])
      @product_type=ProductType.find(params[:product_type_id])
      @products=Product.where(:product_type_id=>params[:product_type_id])
      @title=@product_type.name
    elsif(params[:must])
      @products=Product.where(:must_have=>true)
      @title="Must-have"
    elsif(params[:new])
      @products=Product.order('on_market_on DESC').limit(9)
      @title= "New"
    else
      @products=Product.all
      @title="All"
    end
  end

  def show
    @product=Product.find(params[:id])
    @title=params[:title]
    if(params[:designer_id])
      @designer=Designer.find(params[:designer_id])
      @products=@designer.products
    end
    if(@title=="Must-have")
      @products=Product.where(:must_have=>true)
    elsif(@title=="New")
      @products=Product.order('on_market_on DESC').limit(9)
    end

    if(@products!=nil)
      if((@products.index(@product))+1<@products.size)
        @next=@products.fetch((@products.index(@product))+1)
      else
        @next=@products.fetch(0)
      end
      if((@products.index(@product)-1)>=0)
        @prev=@products.take(@products.index(@product)-1)
      else
        @prev=@products.last
      end
    end


    @matches=@product.suggested_products
    @events=@product.events
    @image=@product.image_url
    @designers=@product.designers
    @photogallery=@product.product_images
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
    @tech_image=@product.tech_image_url
    @designers=@product.designers
  end

  def shops_for_this_product
    @product=Product.find(params[:id])
    @shops=@product.shops
  end

  def photogallery
    @product=Product.find(params[:id])
    @images=@product.product_images
  end


end