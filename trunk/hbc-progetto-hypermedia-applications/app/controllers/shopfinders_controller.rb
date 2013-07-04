class ShopfindersController < ApplicationController


  def index

      if(params[:country]&&params[:county])
        @countries=Country.all
        @country_chosen=Country.find(params[:country])
        @county_chosen=County.find(params[:county])
        @counties=County.where('country_id= :country', {
            :country => params[:country]
        })
        @shops=Shop.where('country= :country and county= :county', {
            :country => @country_chosen.name,
            :county => @county_chosen.name
        })

      elsif(params[:country])

        @countries=Country.all
        @country_chosen=Country.find(params[:country])
        @counties=County.where('country_id= :country', {
            :country => params[:country]
        })

      else
      @countries=Country.all
      @country_chosen=nil
      @counties=nil
      end

  end


  def shopsbylocation

    @shops=Shop.where('country= :country and county= :county', {
        :country => params[:country],
        :county => params[:county]
    })

  end


end
