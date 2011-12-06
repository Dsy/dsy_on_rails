class Forum
  include DataMapper::Resource

  storage_names[:default] = 'forum'

  property :id,          Serial,    :field => 'forumid'
  property :name,        String,    :field => 'title'
  property :description, String
  property :active,      Boolean
  property :position,    Integer,   :field => 'displayorder'
  property :replies_nr,  Integer,   :field => 'replycount'
  property :last_post,   EpochTime, :field => 'lastpost'
  property :last_poster, Integer,   :field => 'lastposter'
  property :threads_nr,  Integer,   :field => 'threadcount'
  property :open,        Boolean,   :field => 'allowposting'
  property :parent_id,   Integer,   :field => 'parentid'
  property :parent_list, String,    :field => 'parentlist'

  has n, :topics
  #, :child_key => [ :forumid ]

  def self.active
    all(:active => true)
  end

  def self.by_position
    all(:order => [:position.asc])
  end

  def parent
    Forum.get(@parent_id)
  end

  def children
    Forum.all(:parent_id => @id)
  end

  def self.top_level
    Forum.all(:parent_id => -1)
  end
end
