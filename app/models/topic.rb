class Topic < ActiveRecord::Base

  belongs_to :forum
  has_many :posts

  #def self.active
    #all(:active => true)
  #end

  def self.by_dateline
    #FIXME
    order 'id DESC'
  end

  def last_post
    posts.order('created_at DESC').first
  end

  def last_poster
    last_post.user if last_post
  end

  def first_post
    posts.order('created_at ASC').first
  end

  def created_at
    first_post.created_at if first_post
  end

#  def parent
    #Forum.get(@parent_id)
  #end

  #def children
    #Forum.all(:parent_id => @id)
  #end

  #def self.top_level
    #Forum.all(:parent_id => -1)
  #end

  def last_post_date
    last_post.to_date.to_s :long
  end

  def last_post_time
    last_post.to_s :time
  end

end
