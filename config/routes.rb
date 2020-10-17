Rails.application.routes.draw do
  get 'callback', to: 'google_login#callback'
  resources :users
  root to: 'users#index'
end
