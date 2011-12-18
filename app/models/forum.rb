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
  property :last_poster, String,    :field => 'lastposter'
  property :threads_nr,  Integer,   :field => 'threadcount'
  property :open,        Boolean,   :field => 'allowposting'
  property :parent_id,   Integer,   :field => 'parentid'
  property :parent_list, String,    :field => 'parentlist'

  has n, :topics

  has n, :forums, 'Forum', :child_key => [ :parent_id ]
  belongs_to :forum, 'Forum', :child_key => [ :parent_id ]

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

  def last_post_date
    last_post.to_date.to_s :long
  end

  def last_post_time
    last_post.to_s :time
  end

  def last_poster_user
    User.first :username => self.last_poster
  end

  def parent_chain
    parent_chain = []
    current = self.parent
    begin
      parent_chain << current
      current = current.parent
    end while current
    parent_chain
  end
end
