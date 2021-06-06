Rails.application.routes.draw do
  devise_for :consultants
  resources :jobs
  resources :consultants do
    resources :clients
  end
  namespace :consultant do
    resources :clients
  end


  #get 'home/index'
  get 'home/about'

   root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
