Rails.application.routes.draw do
  resources :event_members
  resources :club_members
  resources :clubs
  devise_for :users
  get 'sessions/new'

  resources :users
  resources :events
  resources :posts
  root      'home#home'
  get       '/login',         to: 'users#sign_in'
  get       '/signup',        to: 'users#sign_up'
  get       '/logout',        to: 'devise/sessions#destroy'
  get       'contact',        to: 'home#contact'
  post      'request_contact',to: 'home#request_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
