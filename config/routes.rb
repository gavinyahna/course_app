Rails.application.routes.draw do
  resources :enrollments
  get 'users/new'
  resources :users
  resources :instructors
  resources :subjects
  resources :courses
  root 'application#default'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
