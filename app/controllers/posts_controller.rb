class PostsController < ApplicationController
  #invokes authorize private method defined below before each action (except index)
  #then raises error when user has no rights  
  before_filter :authorize, :except => :index
  # GET /posts
  # GET /posts.xml
  def index    
    authorize! :read, Post
    @posts = Post.find(:all, :order => "created_at DESC")
    respond_to do |format|
      format.html
      format.atom
    end

  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new

  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])

      if @post.save
        redirect_to posts_path, :notice => t(:post_added)
      else
        render :action => "new"
      end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])

    
      if @post.update_attributes(params[:post])
        redirect_to(posts_path, :notice => t(:post_updated))
      else
        render :action => "edit"        
      end
    
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

      format.html { redirect_to(posts_url) }

  end
  
  private
  
  def authorize
    authorize! :manage, Post
  end
end
