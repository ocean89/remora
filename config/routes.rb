ActionController::Routing::Routes.draw do |map|
  map.login "/login", :controller => "user_sessions", :action => "new"
  map.logout "/logout", :controller => "user_sessions", :action => "destroy"
  map.signup "/signup", :controller => "users", :action => "new"

  map.remove_bookmark "/bookmark/remove/:feed_entry_id", :controller => "bookmarks", :action => "destroy"

  map.resources :bookmarks
  map.resources :user_sessions
  map.resources :comments
  map.resources :latest
  map.resources :users
  map.resources :feeds, :has_many => :feed_entries
  map.resources :feed_entries, :has_many => :comments, :has_many => :bookmarks

  map.root :controller => 'feeds'
  map.connect ':controller/:action'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect 'feeds/update/', :controller => 'feeds', :action => 'update'
end

