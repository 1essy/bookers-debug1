Rails.application.routes.draw do
  root to: 'homes#top'
  get "homes/top" => "homes#top"
  resources :books, only: [:edit, :index, :show, :create, :update, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_book'
end
