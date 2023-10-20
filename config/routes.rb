Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #  get 'user_documents/:user_id' => 'documents#user', as: :user_documents
  root "documents#index" 
  #  scope :users do
  #    resources :documents 
  #   end
    scope :users do
     resources :documents do
      collection do
        patch :reorder
      end
    end
   end
  # Defines the root path route ("/")
  # root "articles#index"
end
