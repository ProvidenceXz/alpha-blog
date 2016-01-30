class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    @article = ARticle.new(article_params)
    @article.save
  end
  
  private
  def article_params    
    params.require(:article).permit(:title, :description)
  end

  
end