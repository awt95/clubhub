Rails.application.routes.draw do
  resources :clubs
  devise_for :users
  get 'sessions/new'

  resources :users
  resources :events
  resources :posts
  resources :club_members
  resources :event_members
  root      'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
