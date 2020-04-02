class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new # .id == nil,, id == 1
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to("/posts/#{@post.id}") # creating another GET request
    else
      # byebug
      # redirect_to("/posts/new")
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
