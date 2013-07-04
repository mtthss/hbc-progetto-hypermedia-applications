class ProductTypesController < ApplicationController
  def index
    @product_types=ProductType.all
  end

  def new
    @product_type=ProductType.new
  end

  def create
  end
end
