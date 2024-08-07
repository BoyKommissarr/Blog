Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index"

  get "/articles", to: "articles#index"

  get "/articles/:id", to: "articles#show", as: :article

  get "/photos",to: "photos#index"

  get "/photos/:id", to: "photos#show"
end
