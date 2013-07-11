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
  end

  def show
    @designer=Designer.find(params[:id])
  end

  def new
    render layout: "admin_layout"
    @designer=Designer.new
  end

  def create
  end

  def products
    @designer=Designer.find(params[:id])
    @products=@designer.products.order('name ASC')
  end
end
