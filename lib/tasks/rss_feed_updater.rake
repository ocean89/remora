task :update_all_feeds => :environment do
  feeds = Feed.find(:all)
  feeds.each do |feed|
    parsed_feed = Feedzirra::Feed.fetch_and_parse(feed.feed_url)
    parsed_feed.entries.each do |entry|
      if exists?(entry.id)
        new_entry = FeedEntry.new
        new_entry.title = entry.title
        new_entry.summary = entry.summary
        new_entry.url = entry.url
        new_entry.published_at = entry.published
        new_entry.guid = entry.id
        new_entry.feed_id = feed.id
        new_entry.save
      end
    end
  end
end

def exists?(guid)
  feed_entries = FeedEntry.find(:all)
  feed_entries.each do |entry|
    if entry.guid == guid
      return false
    end
  end
  return true
end

