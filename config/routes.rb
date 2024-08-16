Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index"

  get "/articles", to: "articles#index"

  get "/articles/new", to: "articles#new"

  post "/articles/create", to: "articles#create"

  get "/articles/:id", to: "articles#show", as: :article

  get "/articles/:id/edit", to: "articles#edit", as: :edit_article

  patch "/articles/:id/update", to: "articles#update"

  get "/photos",to: "photos#index"

  get "/photos/:id", to: "photos#show"

  resources :articles do
    resources :comments
  end
end
