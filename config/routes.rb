Blog::Application.routes.draw do
  resources :articles
  resources :sessions
  root to: 'articles#index'

  #match "auth/google_oauth2/callback", :to => "sessions#create"
  match "auth/failure", :to => "sessions#failure"
  match "auth/:provider/callback", :to => "sessions#create"
  match "logout", :to => "sessions#destroy", :as => :logout
end
