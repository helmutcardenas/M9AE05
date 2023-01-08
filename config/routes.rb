Rails.application.routes.draw do
  devise_for :users
  resources :labels
  resources :publications
  resources :products
  resources :brands
  resources :articles
  root "products#menu"
end
