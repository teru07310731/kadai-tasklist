Rails.application.routes.draw do
  get 'tasks/create'
  get 'tasks/destroy'
  root to: 'tasks#index'

  get 'toppages/index'
  get 'relationships/create'
  get 'relationships/destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
end