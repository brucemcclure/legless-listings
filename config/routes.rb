Rails.application.routes.draw do
  devise_for :users, path: "/"
  get "/", to: "pages#home", as: "root"
  resources :listings

  post "/payments/stripe", to: "payments#stripe"
end
