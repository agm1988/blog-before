Blog::Application.routes.draw do

  match "auth/:provider/callback", :to => "articles#create_auth"
  root to: 'articles#index'
  resources :articles

constraints(Subdomain) do
  resources :sessions

  #match "auth/google_oauth2/callback", :to => "sessions#create"
  match "auth/failure", :to => "sessions#failure"
  #match "auth/:provider/callback", :to => "sessions#create"
  match "logout", :to => "sessions#destroy", :as => :logout
end
end
