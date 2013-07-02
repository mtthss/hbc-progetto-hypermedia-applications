class ShopfindersController < ApplicationController
  def index
      @counties=County.all
      @region=Region.all
  end

  def shops_by_location
    @shops=Shop.where('region= :region and county= :county', {
        :region => params[:region],
        :county => params[:county]
    })  end

end
