Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/user' => "furnitures#index", :as => :user_root
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bundles do
    resources :bookings, shallow: true
  end
  resources :furnitures, shallow: true
end
