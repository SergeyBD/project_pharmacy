class SharesController < ApplicationController

  def index
     @shares = Share.all
  end

  def show
     @share = Share.find_by_id(params[:id])
    if @share
      render 'show'
    else
      redirect_to '/404.html'
    end
  end

end