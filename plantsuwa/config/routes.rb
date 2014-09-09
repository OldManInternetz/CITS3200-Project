Plantsuwa::Application.routes.draw do

  get "current_photos/index"
  get "current_photos/show"
  get "current_photos/edit"
  get "current_photos/create"
  get "current_photos/update"
  get "current_photos/destroy"
  get "current_photos/new"
  # Public routes

  root 'welcome#index'

  resources :current_plants, except: [:destroy], :path => 'plants' do
    get :auto_complete_search, :on => :collection
    collection do
      get 'search'
    end
  end

  # Admin routes

  match "/admin",                 to: 'admin_pages#index',           via: 'get'
  match 'admin/plants',           to: 'current_plants#index_admin',  via: 'get',                    as: 'admin_current_plants'
  match 'admin/plants/new',       to: 'current_plants#new_admin',    via: 'get',                    as: 'admin_new_current_plant'
  match 'admin/plants/new',       to: 'current_plants#create_admin', via: 'post',                   as: 'admin_create_current_plant'
  match 'admin/plants/:id',       to: 'current_plants#show_admin',   via: 'get',                    as: 'admin_current_plant'
  match 'admin/plants/:id/edit',  to: 'current_plants#edit_admin',   via: 'get',                    as: 'admin_edit_current_plant'
  match 'admin/plants/:id/edit',  to: 'current_plants#update_admin', via: 'patch',                  as: 'admin_update_current_plant'
  match 'admin/plants/:id',       to: 'current_plants#destroy_admin',via: 'delete'
  resources :notifications,       path: 'admin/notifications',       only: [:index, :show]
  resources :climates,            path: 'admin/climates'
  resources :flower_colours,      path: 'admin/flower_colours'
  resources :leaf_colours,        path: 'admin/leaf_colours'
  resources :origins,             path: 'admin/origins'
  resources :sizes,               path: 'admin/sizes'
  resources :soil_types,          path: 'admin/soil_types'
  resources :types,               path: 'admin/types'
  resources :current_photos,      path: 'admin/photos'

  # User routes

  resources :users
	resources :sessions,            path: "log_in",                    only: [:new, :create, :destroy]

  match '/sign_up',               to: 'users#new',                   via: 'get' 
  match '/log_in',                to: 'sessions#new',                via: 'get'
  match '/log_out',               to: 'sessions#destroy',            via: 'delete' 

end
