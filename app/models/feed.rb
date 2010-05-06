class Feed < ActiveRecord::Base
  has_many :feed_entries
  validates_presence_of :title, :url, :feed_url, :etag, :last_modified
end

