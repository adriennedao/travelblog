class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @post = Post.all
end

  def show
    @post = Post.all
end

  def new
  @post = Post.new
end

  def edit
 end

  def create
     @post = Post.new(post_params)
end
end
