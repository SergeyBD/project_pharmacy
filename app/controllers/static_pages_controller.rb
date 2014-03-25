class StaticPagesController < ApplicationController

  def home
      @news = News.all
      @articles = Article.all
  end

  def store_map

  end

  def store_table
   @stores = Store.all
  end

end
