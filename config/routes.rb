SampleApp::Application.routes.draw do

  resources :user2s
  resources :teams
  resources :sessions, only: [:new, :create, :destroy]
  root 'static_pages#home'
  match '/add_member', to: 'users2#new', via: 'get'
  match '/add_team', to: 'teams#new', via: 'get'
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/user2s', to: 'users2#index', via: 'get'
  match '/user2s', to: 'user2s#create', via: 'post'
  match '/user2s', to: 'users2#index', via: 'get'
  match '/teams', to: 'teams#index', via: 'get'

  
#new_user2_path   GET   /user2s/new(.:format)   user2s#new
#edit_user2_path  GET   /user2s/:id/edit(.:format)  user2s#edit
#user2_path   GET   /user2s/:id(.:format)   user2s#show
#PATCH  /user2s/:id(.:format)   user2s#update
#PUT  /user2s/:id(.:format)   user2s#update
#DELETE   /user2s/:id(.:format)   user2s#destroy
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
