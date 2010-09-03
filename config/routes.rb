Zombie::Application.routes.draw do
  root :controller => 'pages', :action => 'home'

  resources :worlds
  resources :locations
  resources :heroes
  resources :enemies
  resources :weapons
  resources :perks

end
