class PostsController < ApplicationController
  
  def index
  	@post = Post.all
  end

  def new
  	@posts = Post.new 
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
  	@id = Post.find(:id)
  	@posts = Post.update(posts_params)
  	@post = Post.all
  	@posts.save
  	respond_to do |format|
  			format.html { redirect_to post_index_path } 
  		end
  end

  private
 
  def posts_params
  	params.require(:post).permit(:titulo, :descripcion, :fecha)
  end
 end
