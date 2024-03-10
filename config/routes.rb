Rails.application.routes.draw do
  # Resources
  resources "players"
  resources "sessions"
  resources "users"
  
  # Login/logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  # Define the root route
  get("/", { :controller => "players", :action => "index" })
end
