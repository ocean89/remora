class Comment < ActiveRecord::Base
  belongs_to :feed_entry
end

