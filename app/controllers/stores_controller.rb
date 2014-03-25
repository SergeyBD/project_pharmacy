class StoresController < ApplicationController
  def show
    @store = Store.find_by_id(params[:id])
    if @store
      @preparations = @store.preparations.order('name ASC').page(params[:page])
      render 'show'
    else
      redirect_to '/404.html'
    end
  end

  def index
    @stores = Store.all
  end

end
