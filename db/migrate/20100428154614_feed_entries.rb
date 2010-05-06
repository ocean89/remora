class FeedEntries < ActiveRecord::Migration
  def self.up
    create_table :feed_entries do |t|
        t.column :title, :string
        t.column :summary, :string
        t.column :url, :string
        t.column :published_at, :datetime
        t.column :guid, :string
        t.column :feed_id, :integer #belongs to a feed
    end

  end

  def self.down
    drop_table :feed_entries
  end
end

