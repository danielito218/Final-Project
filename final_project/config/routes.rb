Rails.application.routes.draw do
  resources :project_statuses
  resources :projects
  resources :statuses
  resources :clients
  resources :cities
  resources :states
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
