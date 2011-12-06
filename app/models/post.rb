class Post
  include DataMapper::Resource

  storage_names[:default] = 'post'

  property :id,          Serial,    :field => 'postid'
  #property :poster,      String,    :field => 'username'
  property :poster_id,   Integer,    :field => 'userid'
  property :title,       String
  property :visible,    Boolean
#  property :sticky,      Boolean
  #property :replies_nr,  Integer,   :field => 'replycount'
  #property :last_post,   EpochTime, :field => 'lastpost'
  #property :views_nr,    Integer,   :field => 'views'
  #property :open,        Boolean
  property :dateline,    EpochTime, :field => 'dateline'
  property :text,        Text,      :field => 'pagetext'
  property :topic_id,    Integer,   :field => 'threadid'

  belongs_to :topic

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
end
