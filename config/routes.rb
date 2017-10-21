Rails.application.routes.draw do
  resources :event_members
  resources :events
  resources :posts
  resources :club_members
  resources :clubs
  resources :users
  get 'home/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
