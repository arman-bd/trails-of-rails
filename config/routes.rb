Rails.application.routes.draw do
  get "screenshot/", to: "screenshot#index"
  get "screenshot/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/hello", to: "hello#index"
end
