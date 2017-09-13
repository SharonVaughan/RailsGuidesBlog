class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])   
  end

  def new
  end

  def create
    # render plain: params[:article][:title].inspect
    @article = Article.create(article_params)
    redirect_to @article #redirect to the show action
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end