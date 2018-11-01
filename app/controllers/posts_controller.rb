class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @po = Post.new
    @po.title = params[:title]
    @po.description = params[:description]
    @po.save

    redirect_to post_path(@po)
  end

  # add create method here
end
