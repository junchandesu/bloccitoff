Rails.application.routes.draw do
   
  get 'welcome/index'
  get 'welcom/about'

  devise_for :users
  resources :users, only: [:new, :show] do
  	resources :items, only: [:create, :destroy]
  end
  root to: "welcome#index"

  resources :todos, only: [:new, :create, :show]

end
