Rails.application.routes.draw do
  root to: 'toppages#index'


  get 'signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks, only: [:index, :show, :new, :create]
end