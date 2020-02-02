Rails.application.routes.draw do
  root to: 'static_pages#index'

  get 'index', to: 'users#index'

  resources :sessions, only: [:new, :create]
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout',  to: 'sessions#destroy', as: 'logout'

  resources :users, only:[:new, :create, :destroy]

  get 'todos/index', to: 'todos#index', as: 'todo_index'
  resources :todos, only:[:show, :new, :create]

  get 'signup', to: 'users#new', as: 'signup'
end
