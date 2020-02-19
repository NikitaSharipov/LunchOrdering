Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[index update show]

  root to: "users#index"
end
