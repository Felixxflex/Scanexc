Rails.application.routes.draw do
  
  devise_for :users, controllers: { confirmations: 'confirmations' }

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :flats
  resources :technologies
  resources :sports
  resources :sneakers
  resources :gadgets

  get "/path/users/page", to: "users#show", as: "users"
  get "/path/technologiesnew/page", to: "technologies#new", as: "technologiesnew"
  get "/path/share", to: "pages#share", as: "pagesshare"
  get "/path/questions", to: "pages#questions", as: "pagesquestions"
  get "/path/users/show", to: "users#show", as: "usersshow"
  


end
