class ShopfindersController < ApplicationController


  def index

      if(params[:country])

        @countries=Country.where('country= :country', {
            :country => params[:country]
        })

        @counties=County.where('country= :country', {
            :country => params[:country]
        })

      else
      @countries=Country.all
      end

  end


  def shops_by_location

    @shops=Shop.where('country= :country and county= :county', {
        :country => params[:country],
        :county => params[:county]
    })

  end


end
