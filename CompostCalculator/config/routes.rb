Rails.application.routes.draw do
 
  root 'composters#index'
  resources :composters
  resources :updates
  resources :items
  devise_for :users
  get 'composter/view'
  get 'update/view'
  get 'item/view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
