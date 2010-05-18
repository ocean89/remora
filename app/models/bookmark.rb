class Bookmark < ActiveRecord::Base
  belongs_to :feed_entry

  def bookmarked?
    true
  end
end

