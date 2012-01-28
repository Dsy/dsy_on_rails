class Post < ActiveRecord::Base

  belongs_to :user,  counter_cache: true
  belongs_to :topic, counter_cache: true
  has_many :forums
  has_one :topic

  def self.by_dateline
    order 'created_at ASC'
  end
end
