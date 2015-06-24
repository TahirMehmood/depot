Depot::Application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

 # get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  #resources :orders
  #resources :line_items
  #resources :line_items
  #resources :line_items
  #resources :carts
  #get "store/index"

  resources :products do
    get :who_bought, on: :member
  end
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store', via: :all
    end
# ...
end