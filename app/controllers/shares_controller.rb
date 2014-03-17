class SharesController < ApplicationController

  def index
     @shares = Share.all
  end

  def show
     @share = Share.find(params[:id])
  end

  def new
     @share = Share.new
  end

  def create
    @share = Share.create( share_params )
    @share.save
    if @share.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @share = Share.find_by_id(params[:id])
    if @share
      render 'edit'
    else
      redirect_to root_url
    end
  end



  def update
    @share = Share.find_by_id(params[:id])
    if @share.update_attributes (share_params)
      redirect_to root_url
    else
      render 'edit'
    end

  end


  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def share_params
    params.require(:share).permit(:image)
  end

end