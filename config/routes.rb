Rails.application.routes.draw do
  root to: 'tags#index'
  resources :activities
  resources :posts
  resources :tags
  resources :authors
end
