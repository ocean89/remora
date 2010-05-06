class FeedEntriesController < ApplicationController
  def show
    @feed_entry = FeedEntry.find(params[:id])
  end
end

