Rails.application.routes.draw do
  resources :patient_programs
  resources :patient_identifiers
  resources :patients
  resources :orders
  resources :obs
  resources :encounters
  resources :drug_orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
