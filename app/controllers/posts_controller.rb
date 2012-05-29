class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  before_filter :get_post, :only => [:show, :edit, :destroy, :update]
  
  def index
    @posts = @user.posts
  end

  def show
    render :layout => false
  end

  def new
    @post = @user.posts.new
  end

  def create
    post = Post.create(params[:post])
    redirect_to post_path(post)
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      redirect_to :action => :index
    else
      redirect_to :action => :edit
    end
  end

  private

  def get_post
    @post = @user.posts.find_by_id(params[:id])
  end
end
