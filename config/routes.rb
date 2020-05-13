Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root      'static_pages#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :events, only: [:index, :new, :create]
  resources :users, only: [:new, :create, :show]
  # resources :sessions, only: [:new, :create, :destroy]
end
