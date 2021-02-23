Rails.application.routes.draw do
  
  resources :sitemap, :only => :index
  get 'sitemap.xml', :controller => "sitemap", :action => "xml"

  resources :scategories
  resources :picks
  resources :featureds
  # root 'posts#index'
  root 'sales#index'

  resources :sales
  devise_for :users
  resources :posts

  get '/sales/hashtag/:name', to:'sales#hashtags'
  get '/featureds/fhashtag/:name', to:'featureds#hashtags'
  get '/picks/phashtag/:name', to:'picks#hashtags'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
