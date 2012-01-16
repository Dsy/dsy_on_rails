class UsersController < ApplicationController

  #respond_to :html, :xml, :json, :js
  respond_to :html

  def index
    page = params[:page].to_i
    page ||= 1
    per_page = 20
    if page then
      offset = per_page * (page - 1)
      @users = User.all.limit(per_page).offset(offset)
    #else
      #@users = User.all
    end
    respond_with @users
  end

  def show
    @user = User.find params[:id]
    if @user.nil?
      redirect_to :action => :index, :alert => 'The user you specified was not found!'
    end
    respond_with @user
  end
end
