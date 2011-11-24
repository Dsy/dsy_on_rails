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

#  def all
    #scope all.
  #end
  
  def self.active
    all(:active => true)
  end
end
