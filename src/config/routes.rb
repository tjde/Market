Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout'}
  resources :listings
  resources :profiles
  get "/", to: "pages#home", as: "root"
  get "/my_listings", to: "pages#my_listings", as: "my_listings"
  get "/payments/new", to: "payments#new", as: "new_payment"
  post "/payments", to: "payments#stripe"
  get "/payments/success", to: "payments#success"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


