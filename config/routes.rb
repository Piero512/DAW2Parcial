Rails.application.routes.draw do
  resources :assigments
  resources :tasks
  resources :comments
  resources :posts
  resources :events
  resources :positions
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
