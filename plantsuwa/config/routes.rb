Plantsuwa::Application.routes.draw do


  root 'current_plants#index'

  resources :current_plants
  resources :climates, :families

 
end
