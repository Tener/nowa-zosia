class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all

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
        redirect_to posts_path, :notice => 'Post dodany pomyślnie.'
      else
        render :action => "new"
      end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])

    
      if @post.update_attributes(params[:post])
        redirect_to(posts_path, :notice => 'Post usunięty')
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
end
