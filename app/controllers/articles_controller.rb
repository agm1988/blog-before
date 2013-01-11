class ArticlesController < ApplicationController
  def index
    @articles = Article.order("published_at desc")
  end

  def show
    @article = Article.find(params[:id])
  end

  def create_auth
    #auth = env["omniauth.auth"]
    #user = User.from_omniauth(auth)
    #session[:user_id] = user.id
    #redirect_to root_url, :notice => "Signed in successfully!"

    raise env["omniauth.auth"].to_yaml
  end
end
