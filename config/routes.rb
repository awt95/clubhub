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
  get       '/login',         to: 'users#sign_in'
  get       '/signup',        to: 'users#sign_up'
  get       '/logout',        to: 'devise/sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
