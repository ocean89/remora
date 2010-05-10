class FeedsController < ApplicationController
  def index
    @feeds = Feed.find(:all)
  end
  def show
    @feed = Feed.find(params[:id])
  end
  def new
    @feed = Feed.new
  end
  def create
    @feed = Feed.new(params[:feed])
    feed = Feedzirra::Feed.fetch_and_parse(@feed.feed_url)
    @feed.title = feed.title
    @feed.url = feed.url
    @feed.etag = feed.etag
    @feed.last_modified = feed.last_modified
    if @feed.save
      render :index
    else
      render :new
    end
  end
end

