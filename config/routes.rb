Rails.application.routes.draw do
  resources :sales
  devise_for :users
  root 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
