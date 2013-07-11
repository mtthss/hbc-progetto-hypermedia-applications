class ShopsController < ApplicationController
  def show
    @shop=Shop.find(params[:id])
    if(params[:shopfinder])
      @shopfinder=true
    end

  end

  def new
    @shop=Shop.new
  end

  def create
  end
end
