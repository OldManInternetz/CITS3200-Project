Plantsuwa::Application.routes.draw do


  get "welcome/index"
  root 'welcome#index'

  resources :current_plants, :climates, :families, :flower_colours
  resources :genera, :leaf_colours, :origins, :sizes, :soil_types, :types

 
end
