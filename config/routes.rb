Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations" }
  resources :sitelinks
  resources :projects
  #get 'home/index'
  root "home#index"
  get "home/about"
  #external redirects for portfiolio apps
  get "/coffee" => redirect("https://ericapp1.herokuapp.com/coffees/home")
  get "/calorie" => redirect("https://stoic-fermat-358370.netlify.app/")
  get "/calories" => redirect("https://stoic-fermat-358370.netlify.app/")
  get "/trees" => redirect("https://trees-app-a086f6.netlify.app/")
  get "/flashcards" => redirect("https://flashcardreact.azurewebsites.net")
  get "/coffee" => redirect("https://ericapp1.herokuapp.com/coffees/home")

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
