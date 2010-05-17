class CommentsController < ApplicationController
  def create
    @comment = Comment.create!(params[:comment])
    flash[:notice] = "Comment posted!"
    respond_to do |format|
      format.html { redirect_to feed_entry_path(@comment.feed_entry_id) }
      format.js
    end
  end
end

