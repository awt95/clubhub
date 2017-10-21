Rails.application.routes.draw do
  resources :club_members
  resources :event_members
  resources :events
  resources :posts
  resources :clubs
  resources :users
  root 'home#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
