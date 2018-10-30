Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  put 'login', to: 'sessions#login'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  get 'edit', to: 'tasks#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks
end