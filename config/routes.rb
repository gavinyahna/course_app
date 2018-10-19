Rails.application.routes.draw do
  root 'application#default'
  resources :enrollments
  resources :users
  resources :instructors
  resources :subjects
  resources :courses

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/search', to: 'courses#search'
  post '/search', to: 'courses#create_enrollment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
