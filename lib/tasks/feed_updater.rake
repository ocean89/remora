task :update_feed => :environment do
  Delayed::Job.enqueue FeedUpdater.new
  puts "update_feed"
end

