class Topic < ActiveRecord::Base

  belongs_to :forum
  belongs_to :last_post, class_name: 'Post', foreign_key: :last_post_id
  belongs_to :starter, class_name: 'User', foreign_key: :starter_id
  has_many :posts, dependent: :destroy

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

  def created_at
    first_post.created_at if first_post
  end

  def last_post_date
    last_post.to_date.to_s :long
  end

  def last_post_time
    last_post.to_s :time
  end

end
