Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root :to => 'books#new'
  get 'books' => 'books#index'
  post 'books' => 'books#create', as: 'create_book'
  get 'books/:id' => 'books#show', as: 'detail_book'
  get 'books/:id/edit' => 'books#edit', as: 'edits_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
