Rails.application.routes.draw do
  # To restrict routes later use: https://guides.rubyonrails.org/routing.html#restricting-the-routes-created
  resources :categories
  resources :courses
  resources :coordinators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
