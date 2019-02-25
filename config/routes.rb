Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :surf_companies, only: [:index, :show]
  resources :bookings, only: [:show, :new, :create, :delete, :update] 
end
# when we add reviews, then we need to nest them because they relate to a specific surf company