class FeedEntriesController < ApplicationController
  def show
    @feed_entry = FeedEntry.find(params[:id])
    @temp_feed_entry = FeedEntry.find(params[:id])
    @temp_feed_entry.comments.build
    @comment = @temp_feed_entry.comments.build
  end

  def create
    @feed_entry = FeedEntry.find(params[:feed_entry_id])
    @comment = @feed_entry.comments.build(params[:comment])
    @comment.user = current_user.username
    if @comment.save
      flash[:notice] = 'New comment added!'
      redirect_to feed_entry_url(@feed_entry)
    else
      render :action => "new"
    end
  end
end

