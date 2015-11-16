class CommentController < ApplicationController
  def index
    @comments = Comment.all
  end

  def save
    Comment.create(comment_params)
    @comments = Comment.all
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content)
  end

end
