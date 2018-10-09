Rails.application.routes.draw do
  resources :subjects
  resources :instructors
  resources :courses
  get 'home/hello'

  root 'home#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
