Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root                    'events#index'
  get    '/login',   to:  'sessions#new'
  post   '/login',   to:  'sessions#create'
  delete '/logout',  to:  'sessions#destroy'
  resources :events, only: [:index, :new, :create, :show] do 
    resources :invitations, only: [:new, :create, :destroy]
  end
  resources :users, only: [:index, :new, :create, :show]
end
