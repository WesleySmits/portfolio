class PagesController < ApplicationController
  layout "pages"

  def about_me
  	@articles = Article.all
  	respond_to do |format|
      format.html {render :layout => 'article'}
    end
  end

  def resume
  	@articles = Article.all.limit(10)
  end
end
