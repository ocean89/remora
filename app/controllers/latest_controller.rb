class LatestController < ApplicationController
  def index
    @feed_entries = FeedEntry.paginate :per_page => 10,
      :page => params[:page], :order => 'published_at DESC'
    respond_to do |format|
      format.html
      format.js
    end
  end
end

