class PartnersController < ApplicationController

  def index
     @partners = Partner.all
  end

  def show
     @partner = Partner.find_by_id(params[:id])
      if @partner
        render 'show'
      else
        redirect_to '/404.html'
      end
  end

end