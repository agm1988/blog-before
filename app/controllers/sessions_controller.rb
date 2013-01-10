class SessionsController < ApplicationController

  def index

  end

  def create
    auth = env["omniauth.auth"]
    user = User.from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in successfully!"

    # raise env["omniauth.auth"].to_yaml
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out"
  end

  def failure
    raise app.response
  end

end