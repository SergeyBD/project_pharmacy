class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    @preparations = @store.preparations.order('name ASC').page(params[:page])
  end

  def index
    @stores = Store.all
  end

end
