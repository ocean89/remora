class LatestController < ApplicationController
  def index
    @feed_entries = FeedEntry.paginate :per_page => 1,
      :page => params[:page], :order => 'published_at DESC'
    respond_to do |format|
     format.js
     format.html
    end
  end
end

