Rails.application.routes.draw do
   
  get 'users/new'

  devise_for :users
  
  root to: "users#new"

end
