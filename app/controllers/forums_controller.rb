class ForumsController < ApplicationController

  #respond_to :html, :xml, :json, :js
  respond_to :html

  def index
    @forums = Forum.active.top_level.by_rank
    respond_with @forums
  end

  def show
    @forum = Forum.find params[:id]
    @page_title = '.dsy:it. ~ ' + @forum.name
    @forums_breadcrumb = @forum.parent_chain.reverse if @forum.parent_chain
    if @forum.nil?
      redirect_to :action => :index, :alert => 'The forum you specified was not found!'
    end

    params[:page] ||= 1
    @topics = @forum.topics.by_dateline.page params[:page]

    respond_with @topics
    #respond_with @threads do |format|
      #format.js { render json: @threads, content_type: 'text/json'}
    #end
  end
end
