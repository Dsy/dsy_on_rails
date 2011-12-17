class Topic
  include DataMapper::Resource

  storage_names[:default] = 'thread'

  property :id,          Serial,    :field => 'threadid'
  property :title,       String
  #property :visible,    Boolean
  property :sticky,      Boolean
  property :replies_nr,  Integer,   :field => 'replycount'
  property :last_post,   EpochTime, :field => 'lastpost'
  property :last_poster, Integer,   :field => 'postuserid'
  property :views_nr,    Integer,   :field => 'views'
  property :open,        Boolean
  property :dateline,    EpochTime, :field => 'dateline'
  property :forum_id,    Integer,   :field => 'forumid'

  belongs_to :user, 'User', :child_key => [ :last_poster ]
  belongs_to :forum
  has n, :posts

  #def self.active
    #all(:active => true)
  #end

  def self.by_dateline
    all(:order => [:dateline.desc])
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
