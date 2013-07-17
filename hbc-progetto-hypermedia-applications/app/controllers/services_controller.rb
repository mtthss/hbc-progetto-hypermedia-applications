class ServicesController < ApplicationController
  def index
    @services=Service.all
  end

  def show
    @service=Service.find(params[:id])
    if(params[:list])
      @list="All"
    end
  end

  def associated_products
    @service=Service.find(params[:id])
    @products=@service.products
  end
end
