class BookmarksController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    bookmark = Bookmark.new
    bookmark.feed_entry_id = params[:feed_entry_id]
    bookmark.user_id = current_user.id
    bookmark.save
    flash[:notice] = "Post bookmarked"
    redirect_to feed_entry_path(FeedEntry.find(params[:feed_entry_id]))
  end

  def destroy
    Bookmark.find(:first, :conditions => { :feed_entry_id => params[:feed_entry_id], :user_id => current_user.id }).destroy
    flash[:notice] = "Bookmark removed"
    redirect_to feed_entry_path(FeedEntry.find(params[:feed_entry_id]))
  end

end

