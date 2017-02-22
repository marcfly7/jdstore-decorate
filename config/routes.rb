Rails.application.routes.draw do
  root 'products#home'
  namespace :admin do
    resources :products
  end
  devise_for :users
  resources :products do
    resources :reviews
    member do
      post :add_to_cart
    end
    collection do
      get :search
    end
  end
  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end
  resources :cart_items
  resources :orders
  namespace :account do
    resources :orders
  end
  resources :welcome

end
