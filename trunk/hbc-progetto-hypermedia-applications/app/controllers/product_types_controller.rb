class ProductTypesController < ApplicationController
  def index
    @product_types=ProductType.all
  end

  def new
    @product_type=ProductType.new
  end

  def create
  end

  def products
    @product_type=ProductType.find(params[:id])
  end
end
