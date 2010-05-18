class FeedEntry < ActiveRecord::Base
  belongs_to :feed
  has_many :comments
  has_many :bookmarks
  validates_presence_of :title, :summary, :url, :published_at, :guid,  :feed_id
end

