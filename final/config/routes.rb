Rails.application.routes.draw do
  # Routes for the User_note resource:
  # CREATE
  get "/user_notes/new", :controller => "user_notes", :action => "new"
  post "/create_user_note", :controller => "user_notes", :action => "create"

  # READ
  get "/user_notes", :controller => "user_notes", :action => "index"
  get "/user_notes/:id", :controller => "user_notes", :action => "show"

  # UPDATE
  get "/user_notes/:id/edit", :controller => "user_notes", :action => "edit"
  post "/update_user_note/:id", :controller => "user_notes", :action => "update"

  # DELETE
  get "/delete_user_note/:id", :controller => "user_notes", :action => "destroy"
  #------------------------------

  # Routes for the Note_template resource:
  # CREATE
  get "/note_templates/new", :controller => "note_templates", :action => "new"
  post "/create_note_template", :controller => "note_templates", :action => "create"

  # READ
  get "/note_templates", :controller => "note_templates", :action => "index"
  get "/note_templates/:id", :controller => "note_templates", :action => "show"

  # UPDATE
  get "/note_templates/:id/edit", :controller => "note_templates", :action => "edit"
  post "/update_note_template/:id", :controller => "note_templates", :action => "update"

  # DELETE
  get "/delete_note_template/:id", :controller => "note_templates", :action => "destroy"
  #------------------------------

  # Routes for the Interaction_type resource:
  # CREATE
  get "/interaction_types/new", :controller => "interaction_types", :action => "new"
  post "/create_interaction_type", :controller => "interaction_types", :action => "create"

  # READ
  get "/interaction_types", :controller => "interaction_types", :action => "index"
  get "/interaction_types/:id", :controller => "interaction_types", :action => "show"

  # UPDATE
  get "/interaction_types/:id/edit", :controller => "interaction_types", :action => "edit"
  post "/update_interaction_type/:id", :controller => "interaction_types", :action => "update"

  # DELETE
  get "/delete_interaction_type/:id", :controller => "interaction_types", :action => "destroy"
  #------------------------------

  # Routes for the Interaction resource:
  # CREATE
  get "/interactions/new", :controller => "interactions", :action => "new"
  post "/create_interaction", :controller => "interactions", :action => "create"

  # READ
  get "/interactions", :controller => "interactions", :action => "index"
  get "/interactions/:id", :controller => "interactions", :action => "show"

  # UPDATE
  get "/interactions/:id/edit", :controller => "interactions", :action => "edit"
  post "/update_interaction/:id", :controller => "interactions", :action => "update"

  # DELETE
  get "/delete_interaction/:id", :controller => "interactions", :action => "destroy"
  #------------------------------

  # Routes for the Recruiter resource:
  # CREATE
  get "/recruiters/new", :controller => "recruiters", :action => "new"
  post "/create_recruiter", :controller => "recruiters", :action => "create"

  # READ
  get "/recruiters", :controller => "recruiters", :action => "index"
  get "/recruiters/:id", :controller => "recruiters", :action => "show"

  # UPDATE
  get "/recruiters/:id/edit", :controller => "recruiters", :action => "edit"
  post "/update_recruiter/:id", :controller => "recruiters", :action => "update"

  # DELETE
  get "/delete_recruiter/:id", :controller => "recruiters", :action => "destroy"
  #------------------------------

  # Routes for the Corporate resource:
  # CREATE
  get "/corporates/new", :controller => "corporates", :action => "new"
  post "/create_corporate", :controller => "corporates", :action => "create"

  # READ
  get "/corporates", :controller => "corporates", :action => "index"
  get "/corporates/:id", :controller => "corporates", :action => "show"

  # UPDATE
  get "/corporates/:id/edit", :controller => "corporates", :action => "edit"
  post "/update_corporate/:id", :controller => "corporates", :action => "update"

  # DELETE
  get "/delete_corporate/:id", :controller => "corporates", :action => "destroy"
  #------------------------------

  # Routes for the Region resource:
  # CREATE
  get "/region/new", :controller => "region", :action => "new"
  post "/create_region", :controller => "region", :action => "create"

  # READ
  get "/region", :controller => "region", :action => "index"
  get "/region/:id", :controller => "region", :action => "show"

  # UPDATE
  get "/region/:id/edit", :controller => "region", :action => "edit"
  post "/update_region/:id", :controller => "region", :action => "update"

  # DELETE
  get "/delete_region/:id", :controller => "region", :action => "destroy"
  #------------------------------

  # Routes for the Industry resource:
  # CREATE
  get "/industry/new", :controller => "industry", :action => "new"
  post "/create_industry", :controller => "industry", :action => "create"

  # READ
  get "/industry", :controller => "industry", :action => "index"
  get "/industry/:id", :controller => "industry", :action => "show"

  # UPDATE
  get "/industry/:id/edit", :controller => "industry", :action => "edit"
  post "/update_industry/:id", :controller => "industry", :action => "update"

  # DELETE
  get "/delete_industry/:id", :controller => "industry", :action => "destroy"
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get "/school/new", :controller => "school", :action => "new"
  post "/create_school", :controller => "school", :action => "create"

  # READ
  get "/school", :controller => "school", :action => "index"
  get "/school/:id", :controller => "school", :action => "show"

  # UPDATE
  get "/school/:id/edit", :controller => "school", :action => "edit"
  post "/update_school/:id", :controller => "school", :action => "update"

  # DELETE
  get "/delete_school/:id", :controller => "school", :action => "destroy"
  #------------------------------

  root 'interactions#index'
  
  devise_for :users
  

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
