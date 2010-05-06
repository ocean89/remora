class CommentsController < ApplicationController
  def index
    @feed_entry = FeedEntry.find(params[:feed_entry_id])
    @comments = @feed_entry.comments
  end
  def show
    @feed_entry = FeedEntry.find(params[:feed_entry_id])
    @comments = @feed_entry.comments.find(params[:id])
  end
  def new
    @feed_entry = FeedEntry.find(params[:feed_entry_id])
    @comment = @feed_entry.comments.build
  end
  def create
    @feed_entry = FeedEntry.find(params[:feed_entry_id])
    @comment = @feed_entry.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = 'New comment added!'
      redirect_to feed_entry_url(@feed_entry)
    else
      render :action => "new"
    end
  end
end
