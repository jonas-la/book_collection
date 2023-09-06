Rails.application.routes.draw do
  get 'books/index'
  get 'update_books/index'
  get 'delete_books/index'
  # Defines the root path route ("/")
  root "main#index"
  get 'show_details/index'
  get 'main/index'
  get 'main/create'
  get 'main/read'
  get 'main/update'
  get 'main/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :books, only: [:index]
  resources :delete_books, only: [:index]
  resources :show_details, only: [:index]
  resources :update_books, only: [:index]
  
end
