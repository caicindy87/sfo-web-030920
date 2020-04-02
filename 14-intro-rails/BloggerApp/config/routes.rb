Rails.application.routes.draw do
  resources :posts

  # index
  get '/posts', to: "posts#index"
  # show
  get '/posts/:id', to: "posts#show"
  # new
  get '/posts/new', to: "posts#new"
  # create
  post '/posts', to: "posts#create"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
