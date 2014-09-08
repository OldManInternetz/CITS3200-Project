Plantsuwa::Application.routes.draw do

  resources :notifications

  root 'welcome#index'

  resources :current_plants, :path => 'plants' do
    get :auto_complete_search, :on => :collection
    collection do
      get 'search'
    end
  end
  resources :climates, :families, :flower_colours
  resources :genera, :leaf_colours, :origins, :sizes, :soil_types, :types, :photos


  resources :users, path: "sign_up", as: :users, only: [:create]
	resources :sessions, path: "log_in", only: [:new, :create, :destroy]

  match '/sign_up', to: 'users#new',    via: 'get' 
  match '/log_in',  to: 'sessions#new', via: 'get'
  match '/log_out', to: 'sessions#destroy',    via: 'delete' 
  
  offline = Rack::Offline.configure do
    
    cache "index.html"
    cache "assets/images/uwacrest.gif"
    cache "assets/images/uwacrest-small.gif"
    cache "/app/assets/stylesheets/application.css"
    cache "stylesheets/custom-mobile.css"
    cache ActionController::Base.helpers.asset_path("application.js")
    cache ActionController::Base.helpers.asset_path("application.css")
    
    network "/"
  end
  get "/application.manifest" => Rails::Offline

end
