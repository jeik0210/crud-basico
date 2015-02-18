class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :delete]
  
  def index
  	@post = Post.all
  end

  def new
  	@posts = Post.new 
  end

  def edit
    
  end

  def create
  	@posts = Post.new(posts_params)
  	@posts.save
    respond_to do |format|
      format.html { redirect_to post_index_path } 
    end
  end

  def show

  end

  def update
    @post.update(posts_params)
    respond_to do |format|
      format.html { redirect_to post_index_path } 
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def posts_params
    params.require(:post).permit(:titulo, :descripcion, :fecha)
  end
end
