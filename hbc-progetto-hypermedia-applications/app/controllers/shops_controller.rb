class ShopsController < ApplicationController

  before_filter :confirm_logged_in

  def show
    @shop=Shop.find(params[:id])
    if(params[:shopfinder])
      @shopfinder=true
    end

  end

  def new
    @shop=Shop.new
    @countries=Country.order('name ASC')
    @counties=County.order('name ASC')
    render layout: "admin_layout"
  end

  def create
    shop=Shop.new(params[:shop])
    if shop.save
      flash[:notice]= "Shop created successfully!"
      redirect_to admins_path
    else
      flash[:notice]= "Error in shop creation. Check out that all the fields are fill in correctly"
      render 'new'
    end
  end
end
