Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :surf_companies, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

end
# when we add reviews, then we need to nest them because they relate to a specific surf company
