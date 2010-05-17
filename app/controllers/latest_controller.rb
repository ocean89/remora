class LatestController < ApplicationController
  def index
    #@feed_entries = FeedEntry.descend_by_published_at
    @feed_entries = FeedEntry.paginate :per_page => 10,
      :page => params[:page], :order => 'published_at DESC'

    respond_to do |format|
      format.html
      format.js {
        render :update do |page|
          page.replace 'results', :partial => "feed_entries/feed_entry", :collection => @feed_entries
        end
      }
    end


  end

end

