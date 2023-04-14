Rails.application.routes.draw do
  devise_for :profiles
  get 'profiles/index'
  get 'welcome/index'
  get 'alunos/new'
  get 'alunos/create'
  get 'alunos/show'
  get 'alunos/destroy'
  root 'welcome#index'
  get 'alunos/index', to: 'alunos#index'
  
  resources :alunos
  
  get '/cargos', to: 'cargos#index'
  get 'cargos/show'
  resources :cargos
  

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
