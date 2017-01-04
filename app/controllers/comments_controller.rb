class CommentsController < ApplicationController
  before_action :prepare_article
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @comment = Comment.paginate(page: params[:page])
  end

	def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :body)
    end

  def prepare_article
    @article = Article.find(params[:article_id])  
  end  
end
