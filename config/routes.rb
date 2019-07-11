Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'helf'
  get  '/about',   to: 'static_pages#about', as: 'ab'
  get  '/contacts', to: 'static_pages#contact', as: 'cnt'
  # get '/signup', to: 'user#new', as: 'signup'
end