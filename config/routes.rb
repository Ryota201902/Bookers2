Rails.application.routes.draw do

  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  get '/about' => 'books#about'
  get '/edit' => 'books#edit'
  resources :users
  resources :books
end
