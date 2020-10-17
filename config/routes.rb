Rails.application.routes.draw do
  get 'callback', to: 'google_login#callback'
  get 'exit', to: 'google_login#sign_out'
  resources :users
  root to: 'users#index'
end
