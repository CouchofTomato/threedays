Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'users/new'

  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about',   to: 'static_pages#about'
  get '/help',    to: 'static_pages#help'
  get '/signup',  to: 'users#new'
  get '/index', 	to: 'users#index'
	resources :users
	resources :cities
end