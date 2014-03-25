class NewsController < ApplicationController
  def show
    @news = News.find_by_id(params[:id])
    if @news
      render 'show'
    else
      redirect_to '/404.html'
    end
  end

end