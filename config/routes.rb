Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :cervejas


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end