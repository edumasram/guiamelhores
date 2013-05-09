Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :beerstyles


  resources :countries


  resources :beers, :path => 'cervejas'
  resources :breweries, :path => 'cervejarias'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end

  # Antigos (traduzindo para inglês)
  # resources :cervejarias
  # resources :cervejas