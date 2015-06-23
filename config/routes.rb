Depot::Application.routes.draw do
  resources :orders
  resources :line_items
  resources :line_items
  resources :line_items
  resources :carts
  get "store/index"
  resources :products do
    get :who_bought, on: :member
  end
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'store#index', as: 'store'
# ...
end