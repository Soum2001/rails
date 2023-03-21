Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :posts
  get 'greet',to:'greetings#hello'
  get 'post',to:'posts#index'
  get "/post/:id", to: "posts#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
  root "greetings#hello"
end
