class PostsController < ApplicationController

  #def index
    ##params[:page] |= 1
    ##@forums = Forum.active.top_level.by_position.page params[:page], :per_page => 10
    #top_level_forums = Forum.active.top_level.by_position
    #@forums = {}
    #top_level_forums.each do |f|
      #@forums[f] = f.children.active.by_position
    #end
    ##@pager  = @forums.pager.to_html "/forums"
  #end

  def index
    
  end

  def show
    @post = Post.get params[:id]
    if @post.nil?
      redirect_to :action => :index, :alert => 'The post you specified was not found!'
    end
    #@posts = @thread.posts.by_dateline

    #respond_to do |format|
      #format.html
    #end
  end
end
