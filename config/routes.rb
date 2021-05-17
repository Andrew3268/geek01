Rails.application.routes.draw do
  
  get 'bridge/index'
  resources :themes
  resources :sitemap, :only => :index
  get 'sitemap.xml', :controller => "sitemap", :action => "xml"

  resources :scategories
  resources :picks
  resources :featureds
  # root 'posts#index'
  root 'picks#index'


  resources :sales
  devise_for :users
  resources :posts

  get '/sales/hashtag/:name', to:'sales#hashtags'
  get '/featureds/fhashtag/:name', to:'featureds#hashtags'
  get '/picks/phashtag/:name', to:'picks#hashtags'


  #Bridge Page
  get '/bridge/manage_hashtags'
  get '/bridge/top_100'
  get '/bridge/half_deal'
  get '/bridge/under_deal'
  get '/bridge/sales'
  get '/bridge/delete_old_deal'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
