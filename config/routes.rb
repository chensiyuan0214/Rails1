Rails.application.routes.draw do
  get 'home/hello'

  resources :courses
  resources :subjects
  resources :instructors
  root 'home#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
