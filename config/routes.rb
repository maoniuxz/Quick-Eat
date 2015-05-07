# == Route Map
#
#                   Prefix Verb   URI Pattern                     Controller#Action
#                  reviews GET    /reviews(.:format)              reviews#index
#                          POST   /reviews(.:format)              reviews#create
#               new_review GET    /reviews/new(.:format)          reviews#new
#              edit_review GET    /reviews/:id/edit(.:format)     reviews#edit
#                   review GET    /reviews/:id(.:format)          reviews#show
#                          PATCH  /reviews/:id(.:format)          reviews#update
#                          PUT    /reviews/:id(.:format)          reviews#update
#                          DELETE /reviews/:id(.:format)          reviews#destroy
#        restaurants_index GET    /restaurants/index(.:format)    restaurants#index
#       restaurants_import GET    /restaurants/import(.:format)   restaurants#import
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#            user_password POST   /users/password(.:format)       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#                          PATCH  /users/password(.:format)       devise/passwords#update
#                          PUT    /users/password(.:format)       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
#        user_registration POST   /users(.:format)                devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#                          PATCH  /users(.:format)                devise/registrations#update
#                          PUT    /users(.:format)                devise/registrations#update
#                          DELETE /users(.:format)                devise/registrations#destroy
#               pages_info GET    /pages/info(.:format)           pages#info
#                     root GET    /                               redirect(301, /ideas)
#                    ideas GET    /ideas(.:format)                ideas#index
#                          POST   /ideas(.:format)                ideas#create
#                 new_idea GET    /ideas/new(.:format)            ideas#new
#                edit_idea GET    /ideas/:id/edit(.:format)       ideas#edit
#                     idea GET    /ideas/:id(.:format)            ideas#show
#                          PATCH  /ideas/:id(.:format)            ideas#update
#                          PUT    /ideas/:id(.:format)            ideas#update
#                          DELETE /ideas/:id(.:format)            ideas#destroy
#            welcome_index GET    /welcome/index(.:format)        welcome#index
#       import_restaurants POST   /restaurants/import(.:format)   restaurants#import
#              restaurants GET    /restaurants(.:format)          restaurants#index
#                          POST   /restaurants(.:format)          restaurants#create
#           new_restaurant GET    /restaurants/new(.:format)      restaurants#new
#          edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#               restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                          PATCH  /restaurants/:id(.:format)      restaurants#update
#                          PUT    /restaurants/:id(.:format)      restaurants#update
#                          DELETE /restaurants/:id(.:format)      restaurants#destroy
#

Rails.application.routes.draw do
  get 'restaurants/set_geolocation'

  get 'restaurants/new'

  resources :reviews
  get 'restaurants/index'
  get 'restaurants/import'
  get 'restaurants/new'
  devise_for :users
  get 'pages/info'
  #post '/set_geolocation' => 'restaurants#set_geolocation'

  #root :to => redirect('/ideas')
  resources :ideas
  get 'welcome/index'
  root 'welcome#index'
 # root 'restaurants#new'
  resources :restaurants do
    collection { post :import}
  end



  #root to: 'restaurants#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   #root 'welcome#index'

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
