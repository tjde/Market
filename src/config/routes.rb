Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout'}
  resources :listings
  resources :profiles
  get "/", to: "listings#index", as: "root"
  get "/payments/new", to: "payments#new"
  post "/payments", to: "payments#stripe"
  get "/payments/success", to: "payments#success"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


