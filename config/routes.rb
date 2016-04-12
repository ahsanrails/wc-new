Rails.application.routes.draw do
  resources :property_images
  devise_for :users, :controllers => {
    :registrations => "users/registrations",
    :sessions => "users/sessions",
    :passwords => "users/passwords",
    :confirmations => "users/confirmations",
    :omniauth_callbacks => "omniauth_callbacks"
  }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  # devise_scope :user do
  #   get "signup", to: "users/registrations#new"
  #   get "signin", to: "users/sessions#new"
  #   delete "signout", to: "users/sessions#destroy"
  # end

  get "/popups/signup" => "popup#signup"
  get "/popups/login" => "popup#login"
  get "/popups/password" => "popup#password"

   get "/subscriptions/subscribe" => "subscriptions#subscribe"

  # get "/registrations/new" => "registrations#new"

  resources :registrations
  resources :plans do
    collection do
      get :payments
    end
  end

  resources :p_listings
  #devise_for :users
  resources :pdetails
  resources :cdns
  resources :home
  resources :searches
  resources :property_images

  # get "project/new_release" => 'project#new_release', :as => :new_release

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
