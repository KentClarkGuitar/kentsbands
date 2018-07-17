Rails.application.routes.draw do
  root to: "pages#home"

  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create]
  
  get '/favorites/new', to: 'favorites#new'
  resources :bands do
    resources :favorites, shallow: true, except: :new
  end


end



