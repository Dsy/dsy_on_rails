class Post < ActiveRecord::Base

  belongs_to :user,  counter_cache: true
  belongs_to :topic, counter_cache: true

  #def self.active
    #all(:active => true)
  #end

  def self.by_dateline
    order 'created_at ASC'
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
