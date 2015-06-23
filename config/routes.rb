Rails.application.routes.draw do
   
  get 'welcome/index'

  devise_for :users
  resources :users, only: [:new, :show] do
  	resources :items, only: [:create]
  end
  root to: "welcome#index"

end
