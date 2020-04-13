class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :add_like]
  before_action :set_collections, only: [:new, :create, :edit, :update]
  def new
    @post = Post.new
    
  end

  def create
    @post = Post.new(post_params)
    @post.likes = 0
    if @post.valid?
      @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show

  end
  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def add_like
    @post.likes += 1
    @post.save
    redirect_to @post
  end


  private 

  def post_params
    params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def set_collections
    @destinations = Destination.all
    @bloggers = Blogger.all
  end
end