Rails.application.routes.draw do
  root 'welcome#index'
  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }

  resources :products do
    resources :reviews
    member do
      post :add_to_cart
    end
    collection do
      get :search
    end
    member do
      put "like", to: "products#upvote"
    end

  end
  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end
  resources :cart_items do
    member do
      post :add_quantity
      post :remove_quantity
    end
  end
  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end
  namespace :account do
    resources :orders
  end
  resources :welcome
  get 'about' => 'products#about'
  get 'home' => 'products#home'

end
