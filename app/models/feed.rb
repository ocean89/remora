class Feed < ActiveRecord::Base
  has_many :feed_entries
  has_many :subscriptions
  validates_presence_of :title, :url, :feed_url, :etag, :last_modified
  
  def self.new_feed_and_parse(params)
    new_feed = Feed.new(params[:feed])
    feed = Feedzirra::Feed.fetch_and_parse(new_feed.feed_url)
    new_feed.title = feed.title
    new_feed.url = feed.url
    new_feedetag = feed.etag
    new_feed.last_modified = feed.last_modified
  end
end

