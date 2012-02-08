class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :topic
  has_many :forums
  has_one :starting_topic

  def self.by_dateline
    order 'created_at ASC'
  end
end
