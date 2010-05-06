class Feeds < ActiveRecord::Migration
  def self.up
    create_table :feeds do |t|
        t.column :title, :string
        t.column :url, :string
        t.column :feed_url, :string
        t.column :etag, :string
        t.column :last_modified, :time
    end
  end

  def self.down
    drop_table :feeds
  end
end

