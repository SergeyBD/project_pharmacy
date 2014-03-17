class PartnersController < ApplicationController

  def index
     @partners = Partner.all
  end

  def show
     @partner = Partner.find(params[:id])
  end

  def new
     @partner = Partner.new
  end

  def create
    @partner = Partner.create( partner_params )
    @partner.save
    if @partner.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @partner = Partner.find_by_id(params[:id])
    if @partner
      render 'edit'
    else
      redirect_to root_url
    end
  end



  def update
    @partner = Partner.find_by_id(params[:id])
    if @partner.update_attributes (partner_params)
      redirect_to root_url
    else
      render 'edit'
    end

  end


  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def partner_params
    params.require(:partner).permit(:image)
  end

end