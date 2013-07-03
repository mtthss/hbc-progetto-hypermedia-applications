HbcProject::Application.routes.draw do

  get "all_customers/show"

  get "contacts/show"

  get "company/show"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

     resources :designers, :only => [:index, :show, :new, :create] do
       member do
         get 'products'
       end
     end

     resources :events, :only => [:index, :show, :new, :create] do
       member do
         get 'exposed_products'
       end
     end

     resources :product_types, :only => [:index, :new, :create]

    resources :product_types, :only => [:show, :new, :create]

     resources :product_types, :only => [:index] do
       member do
         get 'shops_by_location'
       end
     end

     resources :products, :only => [:index, :show, :new, :create] do
       member do
         get 'datasheet'
         get 'shops_for_this_product'
       end
     end

    resources :shopfinders, :only => [:index] do
      member do
        get 'shops_by_location'
      end
    end




    match 'company' => 'company#show', :via => :get
    match 'contacts' => 'contacts#show', :via => :get
    match 'all_customers' => 'all_customers#show', :via => :get
    match 'home' => 'home#index', :via => :get
    root :to => 'home#index'
end
