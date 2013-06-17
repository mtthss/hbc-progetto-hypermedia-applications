class CustomersController < ApplicationController
  def index
    @all_customer=Customer.all
  end

  def show
    @customer=Customer.find(params[:id])
  end

  def new
    @customer=Customer.new
  end

  def create
    Customer.create(params[:customer])
    redirect_to
  end
end
