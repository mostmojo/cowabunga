Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :surf_companies, only: [:index, :show] do
  	resources :availabilities, only: [:show] do
  	resources :bookings, only: [:show, :new, :create, :delete, :update] 
    end  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
