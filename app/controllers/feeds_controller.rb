class FeedsController < ApplicationController
  def index
    @feeds = Feed.find(:all)
  end
  def show
    @feed = Feed.find(params[:id])
    @feed_entries= @feed.feed_entries.descend_by_published_at
    respond_to do |format|
      format.html
      format.js #{render :layout => false}
    end
  end
  def new
    @feed = Feed.new
  end
  def create
   @feed = Feed.new_feed_and_parse(params)
    if @feed.save
      flash[:notice] = "Feed added!"
      redirect_to feeds_path
    else
      render :new
    end
  end
end

