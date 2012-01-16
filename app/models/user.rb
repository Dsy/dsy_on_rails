class User < ActiveRecord::Base

  has_many :posts

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
