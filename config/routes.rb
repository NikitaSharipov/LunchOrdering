Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[index update show]
  resource :dashboard

  root to: "dashboards#show"
end
