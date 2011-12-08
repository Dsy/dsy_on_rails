class User
  include DataMapper::Resource

  storage_names[:default] = 'user'

  property :id,            Serial,    :field => 'userid'
  property :group_id,      Integer,   :field => 'usergroupid'
  property :username,      String
  property :password,      String
  property :email,         String
  property :homepage,      String
  property :icq,           String
  property :aim,           String
  property :yahoo,         String
  property :signature,     Text
  property :user_title,    String,    :field => 'usertitle'
  property :custom_title,  String,    :field => 'customtitle'
  property :join_date,     EpochTime, :field => 'joindate'
  property :last_visit,    EpochTime, :field => 'lastvisit'
  property :last_activity, EpochTime, :field => 'lastactivity'
  property :last_post,     EpochTime, :field => 'joindate'
  property :posts_nr,      Integer,   :field => 'posts'
  property :birthday,      DateTime
  property :gender,        String
  property :time_online,   Integer,   :field => 'timeonline'

  has n, :topics
  has n, :posts

  #def self.active
    #all(:active => true)
  #end

  #def self.by_position
    #all(:order => [:position.asc])
  #end

  #def parent
    #Forum.get(@parent_id)
  #end

  #def children
    #Forum.all(:parent_id => @id)
  #end

  #def self.top_level
    #Forum.all(:parent_id => -1)
  #end
end
