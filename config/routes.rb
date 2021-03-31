Rails.application.routes.draw do

  devise_for :users, controllers: { confirmations: 'confirmations' }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home", as:"home"
  resources :flats
  resources :technologies
  resources :sports
  resources :sneakers
  resources :gadgets
  resources :businesses

  resources :locals
  resources :restaurants
  resources :stores
  resources :cafeandbars
 


  get "/path/users/page", to: "users#show", as: "users"
  get "/path/users/notenoughpoints", to: "users#notenoughpoints", as: "notenoughpoints"
  get "/path/technologies/congratulations", to: "technologies#congratulations", as: "congratulations"
  get "/path/users/deliveryinformation", to: "users#deliveryinformation", as: "deliveryinformation"
  get "/path/users/thankyou", to: "users#thankyou", as: "thankyou"
  get "/path/technologiesnew/page", to: "technologies#new", as: "technologiesnew"
  get "/path/chart", to: "pages#chart", as: "pagesshare"
  get "/path/questions", to: "pages#questions", as: "pagesquestions"
  get "/path/users/show", to: "users#show", as: "usersshow"
  resources :users, only: [:show, :edit, :update]


  get "/path/businesses/business", to: "businesses#business", as: "businessesbuy"

  get "/path/wins/windirection", to: "wins#windirection", as: "wins"


  get "/path/users/newpoints", to: "users#newpoints", as: "usersnewpoints"


  # get "/path/users/removepoints", to: "winpoints#update_points", as: :user_remove_points
  get "/path/users/remove_points", to: "technologies#update_points", as: :sport_remove_points

  get "/path/technologie/update_stock", to: "stocks#update", as: :remove_stock

  get "/path/users/addpoints", to: "winpoints#update", as: :user_add_points
end
