class Comments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
        t.column :user, :string, :null => false
        t.column :text, :text, :null => false
        t.timestamps
        t.column :feed_entry_id, :integer #belongs to a feed_entry
    end
  end

  def self.down
    drop_table :comments
  end
end

