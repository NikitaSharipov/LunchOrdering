Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[index update show]
  resource :dashboard
  resources :day_menus, only: %i[show create] do
    get :full_menu, on: :collection
  end
  resources :orders, only: %i[create]

  root to: "dashboards#show"
end
