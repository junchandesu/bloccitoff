Rails.application.routes.draw do
   
  devise_for :users
  resources :users, only: [:new, :show]
  root to: "users#new"

end
