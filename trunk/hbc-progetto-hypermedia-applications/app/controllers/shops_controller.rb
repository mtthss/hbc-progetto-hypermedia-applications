class ShopsController < ApplicationController
  def show
    @shop=Shop.find(params[:id])
  end

  def new
    @shop=Shop.new
  end

  def create
  end
end
