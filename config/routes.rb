Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  delete 'prototypes/:id' => 'prototypes#destroy'

  resources :prototypes do
    resources :comments, only: :create
  end
  
  resources :users, only: :show
end
