Rails.application.routes.draw do
  root to: 'pages#home'

  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  resources :orders
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
