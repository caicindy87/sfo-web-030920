Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bloggers, only: [:new, :show, :create]
  resources :posts, only: [:new, :show, :edit, :create, :update]
  resources :destinations, only: [:show]
  patch '/posts/:id/add_like',  to: 'posts#add_like', as: 'add_like'
end
