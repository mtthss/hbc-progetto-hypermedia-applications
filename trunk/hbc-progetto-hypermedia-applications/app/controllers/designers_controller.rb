class DesignersController < ApplicationController
  def index
    if(params[:top])
      @designers=Designer.where(:top=>true)
      @title="Top"
    else
      @designers=Designer.all
      @title="All"
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
    @designer=Designer.find(params[:designer_id])
    @products=@designer.products.order('name ASC')
  end
end
