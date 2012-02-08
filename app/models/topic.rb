class Topic < ActiveRecord::Base

  belongs_to :forum
  belongs_to :last_post, class_name: 'Post', foreign_key: :last_post_id
  belongs_to :starter, class_name: 'User', foreign_key: :starter_id
  has_many :posts,
    after_add: [ :increment_posts_count, :update_last_post_id ],
    after_remove: :decrement_posts_count,
    dependent: :destroy

  def self.by_dateline
    #FIXME
    order 'id DESC'
  end

  def last_update
    last_post.created_at
  end

  def last_poster
    last_post.user if last_post
  end

  #def created_at
    #first_post.created_at if first_post
  #end

  def last_post_date
    last_post.to_date.to_s :long
  end

  def last_post_time
    last_post.to_s :time
  end

  private

  def increment_posts_count(post)
    topic = Topic.find post.topic_id
    #Topic.increment_counter(:posts_count, topic.id)
    topic.increment! :posts_count
    forum = topic.forum
    #Forum.increment_counter(:posts_count, forum.id)
    forum.increment! :posts_count
    forum.parent_chain.each do |f|
      #Forum.increment_counter(:posts_count, f.id)
      f.increment! :posts_count
    end
    #User.increment_counter(:posts_count, post.user_id)
    #user = post.user
    #user.increment! :posts_count
  end

  def update_last_post_id(post)
    topic = Topic.find post.topic_id
    #topic.last_post_id = post.id
    #topic.save
    topic.update_attributes(last_post_id: post.id)
    forum = topic.forum
    #forum.last_post_id = post.id
    #forum.save
    forum.update_attributes(last_post_id: post.id)
    forum.parent_chain.each do |f|
      #f.last_post_id = post.id
      #f.save
      f.update_attributes(last_post_id: post.id)
    end
    user = post.user
    #user.last_post_id = post.id
    #user.save
    #user.update_attributes(last_post_id: post.id)
  end

  def decrement_posts_count(post)
    topic = Topic.find post.topic_id
    #Topic.decrement_counter(:posts_count, topic.id)
    topic.decrement! :posts_count
    forum = topic.forum
    #Forum.decrement_counter(:posts_count, forum.id)
    forum.decrement! :posts_count
    forum.parent_chain.each do |f|
      #Forum.decrement_counter(:posts_count, f.id)
      forum.decrement! :posts_count
    end
    user = post.user
    user.decrement! :posts_count
 end

end
