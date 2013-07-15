class ProductsController < ApplicationController

  before_filter :confirm_logged_in, :only => [:new, :create]

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
    @partner=@product.partner
    @photogallery=@product.product_images
  end

  def new
    @product=Product.new
    @product_types = ProductType.order('name ASC')
    @designers=Designer.order('name ASC')
    @shops=Shop.order('name ASC')
    @products=Product.order('name ASC')
    @partners=Partner.order('name ASC')
    render layout: "admin_layout"
  end

  def create
    params[:product][:designer_ids].delete("")
    designer_ids = params[:product][:designer_ids]
    designers = Designer.find(designer_ids)
    params[:product].delete(:designer_ids)

    params[:product][:shop_ids].delete("")
    shop_ids = params[:product][:shop_ids]
    shops = Shop.find(shop_ids)
    params[:product].delete(:shop_ids)

    params[:product][:suggested_product_ids].delete("")
    suggested_product_ids = params[:product][:suggested_product_ids]
    suggested_products = Product.find(suggested_product_ids)
    params[:product].delete(:suggested_product_ids)

    image_io = params[:product][:image_url]
    unless image_io==nil
      File.open(Rails.root.join('public','products', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:product][:image_url] = image_io.original_filename
    end

    image_io = params[:product][:tech_image_url]
    unless image_io==nil
      File.open(Rails.root.join('public','products/datasheets', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:product][:tech_image_url] = image_io.original_filename
    end
    product=Product.new(params[:product])

    if product.save
      product.designers << designers
      product.shops << shops
      product.suggested_products << suggested_products
    flash[:notice]= "Product created successfully!"
      redirect_to controller: 'product_images', action: 'index', product_id: product.id
    else
    flash[:notice]= "Error in product creation. Check out that all the fields are fill in correctly"
    render 'new'
    end
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