Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root "documents#index"
   resources :users
   resources :documents
  # Defines the root path route ("/")
  # root "articles#index"
end
