class CommentController < ApplicationController
  def store
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to '/' 
  end

  private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
