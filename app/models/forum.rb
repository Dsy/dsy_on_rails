class Forum < ActiveRecord::Base
  has_many :topics
  has_many :posts, through: :topics
  belongs_to :last_post, class_name: 'Post', foreign_key: :last_post_id
  has_many :children_forums, class_name: 'Forum', foreign_key: :parent_id
  belongs_to :parent_forum,  class_name: 'Forum', foreign_key: :parent_id

  def self.active
    where active: true
  end

  def self.by_rank
    order "rank ASC"
  end

  def parent
    parent_forum
  end

  def children
    children_forums
  end

  def self.top_level
    where parent_id: -1
  end

  def last_post_date
    last_post.to_date.to_s :long
  end

  def last_post_time
    last_post.to_s :time
  end

  def parent_chain
    return [] if parent_id == -1
    parent_chain = []
    current = self.parent
    begin
      parent_chain << current
      current = current.parent
    end while current
    parent_chain
  end

  def last_poster
    last_post.user if last_post
  end
end
