Rails.application.routes.draw do
  resources :joboffers
  resources :searches
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
