Rails.application.routes.draw do
  resources :users, only: [:create, :index, :show]

  # Signup
  get '/signup', to: 'users#new', as: 'signup'

  # Login
  get '/', to: 'sessions#new', as: 'home'
  post '/login', to: 'sessions#create', as: 'login'

  # Logout
  delete '/sessions', to: 'sessions#destroy'
end
