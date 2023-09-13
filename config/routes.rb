Rails.application.routes.draw do
 
  # Defines the root path route ("/")
  root "main#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :main do 
    member do
      get :delete
    end
  end
  

  resources :new_books
  resources :delete_books, only: [:index]
  resources :show_details
  resources :update_books, only: [:index]
  
end
