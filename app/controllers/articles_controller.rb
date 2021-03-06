class ArticlesController < ApplicationController
	include ArticlesHelper
	layout "article"
  
  def index
    @articles = Article.all
  end

  def show
    find_article
    @articles = Article.all.limit(5)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def edit
    find_article
  end

  def update
    find_article
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def destroy
    find_article
    @article.destroy

    redirect_to articles_path
  end
end
