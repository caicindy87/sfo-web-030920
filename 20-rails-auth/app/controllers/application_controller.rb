class ApplicationController < ActionController::Base
  # helper_method macro allows you to make a method from 
  # any controller and make it available to your views

  # alternatively, you could declare the method in the ApplicationHelper
  # and 'includes ApplicationHelper' in this file.
  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def autorized
    # if !logged_in?
    #   redirect_to home_path
    # end

    redirect_to home_path if !logged_in?
  end

  def redirect_logged_in_user
    redirect_to users_path if logged_in?
  end
end
