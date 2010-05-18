class CommentsController < ApplicationController
  def create
    @comment = Comment.create!(params[:comment])
    flash[:notice] = "Comment posted"
    redirect_to feed_entry_path(@comment.feed_entry_id)
  end
end

