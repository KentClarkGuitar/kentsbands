Rails.application.routes.draw do
  root to: "pages#home"

  resources :sessions, only: [:new, :create, :destroy]

  resources :users 

  resources :bands

end



