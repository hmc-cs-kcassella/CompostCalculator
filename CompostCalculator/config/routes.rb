Rails.application.routes.draw do
 
  devise_for :installs
  root 'composters#index'
  resources :composters
  resources :composter_updates
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end