Rails.application.routes.draw do
  devise_for :admins
  devise_for :views
  resources :sitelinks
  resources :projects
  #get 'home/index'
  root "home#index"
  get "home/about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
