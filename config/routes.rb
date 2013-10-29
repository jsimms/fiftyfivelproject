Fiftyfivelproject::Application.routes.draw do
  resources :users

  root 'static_pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/apply',   to: 'static_pages#apply',   via: 'get'

end
