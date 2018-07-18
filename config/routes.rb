Rails.application.routes.draw do
  root to: "pages#home"

  resources :sessions, only: [:new, :create, :destroy]
  
  resources :users, only: [:new, :create]
  
  get '/favorites/new', to: 'favorites#new'
  get '/pages/:page', to: 'pages#show' 

  get '/login', to: 'session#new'
  get '/logout', to: 'sessions#destroy'



  resources :bands do
    resources :favorites, shallow: true, except: :new
    resources :performances, shallow: true, except: :new
  end


end



