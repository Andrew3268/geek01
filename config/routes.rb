Rails.application.routes.draw do
  resources :picks
  resources :featureds
  # root 'posts#index'
  root 'sales#index'

  resources :sales
  devise_for :users
  resources :posts

  get '/sales/hashtag/:name', to:'sales#hashtags'
  get '/featureds/fhashtag/:name', to:'featureds#hashtags'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
