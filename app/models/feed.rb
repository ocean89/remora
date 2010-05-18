class Feed < ActiveRecord::Base
  has_many :feed_entries
  has_many :subscriptions
  validates_presence_of :title, :url, :feed_url, :etag, :last_modified
end

