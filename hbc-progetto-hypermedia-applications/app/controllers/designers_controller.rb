class DesignersController < ApplicationController
  def index
    if(params[:top])
      @designers=Designer.find(params[:top])
    else
      @designers=Designer.all
    end
  end

  def show
    @designer=Designer.find(params[:id])
  end

  def new
    @designer=Designer.new
  end

  def create
  end

  def products
    @designer=Designer.find(params[:id])
    @products=@designer.products.order('name ASC')
  end
end
