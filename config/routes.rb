CheerHighlights::Application.routes.draw do

  get "skills/index"

  get "skills/edit"

  get "skills/new"

  get "skills/show"

  get "microposts/show"

  get "microposts/index"

  get "microposts/edit"

  get "microposts/new"

  # get "skills/index"

  # get "microposts/index"

  # get "microposts/create"

  # get "microposts/show"
  
  # match '/new', to: 'microposts#new'

  # get "microposts/destroy"


  root :to => 'user#index', :as => "root"

  devise_for :users , :skip => 'invitation'

  resources :users
  get "user/_profile", :as => "profile"

  resources :media
  resources :microposts
  resources :skills


  # get "user/index"

  # get "user/show"

  # get '/users'=> 'user#new'

  



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
