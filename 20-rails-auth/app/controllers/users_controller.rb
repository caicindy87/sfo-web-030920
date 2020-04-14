class UsersController < ApplicationController
  before_action :autorized, only: [:index, :show]
  before_action :current_user, except: [:new, :create]
  before_action :redirect_logged_in_user, only: [:new]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    # @articles = @current_user.articles
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation)
  end
end
