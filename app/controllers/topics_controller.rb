class TopicsController < ApplicationController

  respond_to :html

  def show
    @topic = Topic.find params[:id]
    if @topic.nil?
      redirect_to :action => :index, :alert => 'The topic you specified was not found!'
    end
    @posts = @topic.posts.by_dateline
    @topic.increment! :views

    respond_with @posts
  end

  def new
    @topic = Topic.new forum_id: params[:forum_id]
    @post = Post.new
  end

  def create
    @topic = Topic.new params[:topic]
    @topic.title = params[:post][:title]
    forum = Forum.find params[:forum_id]
    respond_to do |format|
      if @topic.save
        forum.topics << @topic
        #logger.debug forum.to_yaml
        #forum.topics_count += 1
        #forum.save
        #forum.increase_topics_count
        #params[:post][:topic_id] = @topic.id
        @post  = Post.new params[:post]
        @topic.posts << @post
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
      else
        format.html { render action: :new }
      end
    end
  end

  def edit
    @topic = Topic.find params[:id]
  end

  def update
    @topic = Topic.find params[:id]
    respond_to do |format|
      if @topic.update_attributes params[:topic]
        format.html  { redirect_to @topic, notice: 'Topic was successfully updated.' }
      else
        format.html  { render :action => "edit" }
      end
    end
  end

  def destroy
    @topic = Topic.find params[:id]
    @topic.destroy
    @topic.forum.decrease_topics_count
    redirect_to topics_path
  end
end
