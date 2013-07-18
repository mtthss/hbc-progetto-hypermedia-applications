class DesignersController < ApplicationController

  before_filter :confirm_logged_in, :only => [:new, :create]

  def index
    if(params[:top])
      @designers=Designer.where(:top=>true)
      @title="Top"
    else
      @designers=Designer.all
      @title="All"
    end
    render layout: 'designer_layout'
  end

  def show
    @designer=Designer.find(params[:id])
    if(params[:top])
      @backLink="Top"
    elsif(params[:product_id])
       @product=Product.find(params[:product_id])
       if(params[:product_type_id])
         @product_type=ProductType.find(params[:product_type_id])
       elsif(params[:title])
         @title=params[:title]
       end
    else
      @backLink=""
    end
  end

  def new
    @designer=Designer.new
    render layout: "admin_layout"
  end

  def create
    image_io = params[:designer][:image_url]
    File.open(Rails.root.join('public','designers', image_io.original_filename), 'wb') do |file|
      file.write(image_io.read)
    end
    params[:product][:image_url] = image_io.original_filename

    designer=Designer.new(params[:designer])

    if designer.save
      flash[:notice]= "Designer created successfully!"
      redirect_to admins_path
    else
      flash[:notice]= "Error in designer creation. Check out that all the fields are fill in correctly"
      render 'new'
    end

  end

  def products
    @designer=Designer.find(params[:id])
    @products=@designer.products.order('name ASC')
    if(params[:top])
      @backLink="Top"
    else
      @backLink=""
    end
  end
end
