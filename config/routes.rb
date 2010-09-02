Zombie::Application.routes.draw do |map|
  map.root :controller => 'pages', :action => 'home'

  map.resources :worlds
  map.resources :locations
  map.resources :heroes
  map.resources :enemies
  map.resources :weapons
  map.resources :perks

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
