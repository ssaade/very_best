Rails.application.routes.draw do
  # Routes for the Food_type resource:
  # CREATE
  get "/food_types/new", :controller => "food_types", :action => "new"
  post "/create_food_type", :controller => "food_types", :action => "create"

  # READ
  get "/food_types", :controller => "food_types", :action => "index"
  get "/food_types/:id", :controller => "food_types", :action => "show"

  # UPDATE
  get "/food_types/:id/edit", :controller => "food_types", :action => "edit"
  post "/update_food_type/:id", :controller => "food_types", :action => "update"

  # DELETE
  get "/delete_food_type/:id", :controller => "food_types", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
