class SessionsController < ApplicationController
	before_action :autorized, except: [:new, :create]

	def new
	end

	def create
		# Find the user
		@user = User.find_by(username: params[:username])

		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to @user
		else
			# Give the user a flash message about what went wrong
			redirect_to home_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to home_path
	end
end
