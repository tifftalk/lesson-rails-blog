class SessionsController < ApplicationController
  # The page that holds a form where user actually logs in
  def new
  end

  # POST /sessions
  # POST /sessions.json
  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    redirect_to articles_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
