Rails.application.routes.draw do
  # To restrict routes later use: https://guides.rubyonrails.org/routing.html#restricting-the-routes-created
  root   'home#index'
  resources :categories
  resources :courses
  resources :coordinators
  resources :locations
  get    '/signup',  to: 'coordinators#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get    '/contact', to: 'contact#index'
  post   '/contact', to: 'contact#send_email'

  post '/courses/vote', to: 'votes#upsert', as: 'votes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
