Rails.application.routes.draw do
    
  root to: 'homes#top'
  get "home/about" => "homes#about", as: "about"
  devise_for :users
  resources :books
  resources :users
   patch 'books/:id' => 'books#update', as: 'update_book'
 end
