Rails.application.routes.draw do
  devise_for :profiles
  get 'profiles/index'
  get 'welcome/index'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/destroy'
  root 'welcome#index'
  

  get 'user/index'
  resources :users
  
  get '/cargos', to: 'cargos#index'
  get 'cargos/show'
  resources :cargos
  

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
