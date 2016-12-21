class PostsController < ApplicationController

  def index
    @post = Post.all
end

  def show
    @post = Post.find(params[:id])
end

  def new
  @post = Post.new
end

  def edit
 end

  def create
     Post.create!(post_params)
     redirect_to posts_path
end

private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
  params.require(:post).permit(:title, :body)
  end
end
