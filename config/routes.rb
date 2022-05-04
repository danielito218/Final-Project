Rails.application.routes.draw do
  get 'search/create'
  resources :project_statuses
  resources :projects
  resources :statuses
  resources :clients
  resources :cities
  resources :states
  root 'home#index'
  get '/clients/:id/clientprojects', to: 'clients#client_projects', as: "clientprojects"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/search_by_timelapse'
  # Defines the root path route ("/")
  # root "articles#index"
end
