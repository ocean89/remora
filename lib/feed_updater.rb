class FeedUpdater
  def perform #We need to check if the entry already exists, but thats not done yet
    while true
      feeds = Feed.find(:all)
      feeds.each do |feed|
        parsed_feed = Feedzirra::Feed.fetch_and_parse(feed.feed_url)
        parsed_feed.entries.each do |entry|
          #unless exists? :guid => entry.id
            feed_entry = FeedEntry.new(
              :title => entry.title,
              :summary => entry.summary,
              :url => entry.url,
              :published_at => entry.published,
              :guid => entry.id,
              :feed_id => feed.id)
            feed_entry.save
          #end
        end
      end
      sleep 20
    end
  end
end

