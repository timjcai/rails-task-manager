Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/task', to: 'tasks#task'
  get '/task/new', to: 'tasks#new'
  get '/task/:id', to: 'tasks#show'
  post '/task', to: 'tasks#create'
  delete '/task/:id', to: 'tasks#destroy'
end
