class PostsController < ApplicationController

  def show
    @post = Post.find params[:id]
    if @post.nil?
      redirect_to :action => :index, :alert => 'The post you specified was not found!'
    end
  end

  def new
    @post = Post.new topic_id: params[:topic_id]
  end

  def create
    @post = Post.new params[:post]
    topic = Topic.find params[:topic_id]
    respond_to do |format|
      if @post.save
        topic.posts << @post
        format.html { redirect_to topic, notice: 'Post was successfully created.' }
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
