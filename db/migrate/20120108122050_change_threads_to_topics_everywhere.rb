class ChangeThreadsToTopicsEverywhere < ActiveRecord::Migration
  def up
    rename_column :forums, :threads_count, :topics_count
    rename_column :forums, :can_contain_threads, :can_contain_topics
    rename_column :posts, :thread_id, :topic_id
  end

  def down
  end
end
