class ForumsController < ApplicationController

  #respond_to :html, :xml, :json, :js
  respond_to :html

  def index
    top_level_forums = Forum.active.top_level.by_position
    @forums = {}
    top_level_forums.each do |f|
      @forums[f] = f.children.active.by_position
    end
    respond_with @forums
  end

  def show
    @forum = Forum.get params[:id]
    @page_title = '.dsy:it. - ' + @forum.name
    @forums_breadcrumb = @forum.parent_chain.reverse
    if @forum.nil?
      redirect_to :action => :index, :alert => 'The forum you specified was not found!'
    end
    @children_forums = @forum.children.active.by_position

    params[:page] ||= 1
    @threads = @forum.topics.by_dateline.page params[:page]

    respond_with @threads
    #respond_with @threads do |format|
      #format.js { render json: @threads, content_type: 'text/json'}
    #end
  end
end
