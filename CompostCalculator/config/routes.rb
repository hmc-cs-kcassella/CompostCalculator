Rails.application.routes.draw do
  root 'composters#index'
  resources :composters
  devise_for :users
  get 'composter/view'
  post 'composter/moisture'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
