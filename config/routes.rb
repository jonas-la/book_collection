Rails.application.routes.draw do
  get 'delete_book/index'
  get 'show_details/index'
  get 'update_book/index'
  get 'book/index'
  get 'main/index'
  get 'main/create'
  get 'main/read'
  get 'main/update'
  get 'main/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
