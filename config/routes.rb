Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'create', to: 'operation#create'
      put 'update/:id', to: 'operation#update'
      delete 'delete/:id', to: 'operation#delete'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
