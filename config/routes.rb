Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'operation', to: 'operation#create'
      put 'operation', to: 'operation#update'
      delete 'operation', to: 'operation#delete'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
