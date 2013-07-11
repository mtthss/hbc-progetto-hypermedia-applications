class ProductTypesController < ApplicationController

  before_filter :confirm_logged_in, :only => [:new, :create]

  def index
    @product_types=ProductType.all
  end

  def new
    render layout: "admin_layout"
    @product_type=ProductType.new
  end

  def create
  end
end
