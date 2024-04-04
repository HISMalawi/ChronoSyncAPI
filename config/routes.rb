Rails.application.routes.draw do
  resources :pharmacy_batches
  resources :pharmacy_batch_items
  resources :pharmacy_batch_item_reallocations
  resources :pharmacies
  resources :person_names
  resources :person_attributes
  resources :person_addresses
  resources :people
  resources :patient_states
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
