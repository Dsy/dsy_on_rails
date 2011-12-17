class TopicsController < ApplicationController

  respond_to :html

  def show
    @topic = Topic.get params[:id]
    if @topic.nil?
      redirect_to :action => :index, :alert => 'The topic you specified was not found!'
    end
    @posts = @topic.posts.by_dateline

    respond_with @posts
  end
end
