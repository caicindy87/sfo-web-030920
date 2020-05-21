class Api::V1::AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password_digest])
      my_token = issue_token(user)
      
      render json: {id: user.id, username: user.username, token: my_token}
    else
      render json: {error: 'Invalid username or password'}, status: 401
    end
  end
end
