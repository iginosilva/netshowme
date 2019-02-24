class RemoveChannelIdFromVideos < ActiveRecord::Migration[5.2]
  def change
    remove_index :videos, :channel_id
    remove_column :videos, :channel_id, :integer
  end
end
