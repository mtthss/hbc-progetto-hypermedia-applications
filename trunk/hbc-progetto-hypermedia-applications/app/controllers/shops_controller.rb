class ShopsController < ApplicationController

  before_filter :confirm_logged_in

  def show
    @shop=Shop.find(params[:id])
    if(params[:shopfinder])
      @shopfinder=true
    end

  end

  def new
    render layout: "admin_layout"
    @shop=Shop.new
  end

  def create
  end
end
