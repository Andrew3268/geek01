Rails.application.routes.draw do
  # root 'posts#index'
  root 'sales#index'

  resources :sales
  devise_for :users
  resources :posts

  get '/sales/hashtag/:name', to:'sales#hashtags'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
