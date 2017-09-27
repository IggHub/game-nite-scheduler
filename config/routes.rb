Rails.application.routes.draw do
#  get 'availability_list', to: 'availability_list#index'
  devise_for :users
  resources :users
  resources :friendships
  resources :availability
  root to: "users#index"
end
