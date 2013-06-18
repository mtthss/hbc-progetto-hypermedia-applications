class ProductTypesController < ApplicationController
  def index
    @products_types=ProductType.all
  end

  def new
    @products_type=ProductType.new
  end

  def create
  end

  def products
    @products_type=ProductType.find(params[:id])
  end
end
