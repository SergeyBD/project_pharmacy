class ArticlesController < ApplicationController
  def show
    @article = Article.find_by_id(params[:id])
    if @article
      render 'show'
    else
      redirect_to '/404.html'
    end
  end

end