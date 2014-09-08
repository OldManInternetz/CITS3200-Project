Plantsuwa::Application.routes.draw do

  # Public routes

  root 'welcome#index'

  resources :current_plants, :path => 'plants' do
    get :auto_complete_search, :on => :collection
    collection do
      get 'search'
    end
  end

  # Admin routes

  match "/admin",             to: 'admin_pages#index',           via: 'get'
  match 'admin/plants',       to: 'current_plants#index_admin',  via: 'get'
  resources :notifications,   path: 'admin/notifications',       only: [:index, :destroy]
  resources :climates,        path: 'admin/climates'
  resources :flower_colours,  path: 'admin/flower_colours'
  resources :leaf_colours,    path: 'admin/leaf_colours'
  resources :origins,         path: 'admin/origins'
  resources :sizes,           path: 'admin/sizes'
  resources :soil_types,      path: 'admin/soil_types'
  resources :types,           path: 'admin/types'
  resources :current_photos,  path: 'admin/photos'

  # User routes

  resources :users
	resources :sessions,        path: "log_in",                    only: [:new, :create, :destroy]

  match '/sign_up',           to: 'users#new',                   via: 'get' 
  match '/log_in',            to: 'sessions#new',                via: 'get'
  match '/log_out',           to: 'sessions#destroy',            via: 'delete' 

end
