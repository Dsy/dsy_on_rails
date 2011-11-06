class ForumsController < ApplicationController

  def index
    #params[:page] |= 1
    @forums = Forum.all.page params[:page], :per_page => 10
  end

  def show
        @forum = Forum.get(params[:id])
    if @forum.nil?
      redirect_to :action => :index, :alert => 'The forum you specified was not found!'
    end
    #respond_to do |format|
      #format.html
    #end
  end
end
