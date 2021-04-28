Rails.application.routes.draw do
  root 'propertys#index'
  resources :nearest_stations
  resources :propertys
end
