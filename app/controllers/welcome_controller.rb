class WelcomeController < ApplicationController
  def index
    @comments = Comment.all

    if @comments.length >= 10
      last_comment = Comment.first
      last_comment.destroy
    end
  end
end
