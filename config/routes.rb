Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index"

  get "/articles", to: "articles#index"

  get "/articles/new", to: "articles#new"

  post "/articles/create", to: "articles#create"

  get "/articles/:id", to: "articles#show", as: :article

  get "/articles/:id/edit", to: "articles#edit", as: :edit_article

  patch "/articles/:id/update", to: "articles#update"

  delete "/articles/:id", to: "articles#destroy"

  # Photos

  get "/photos",to: "photos#index"

  get "/photos/new", to: "photos#new"

  get "/photos/:id", to: "photos#show"

  post "/photos/create", to: "photos#create"

  get "/photos/:id/edit", to: "photos#edit", as: :edit_photo

  patch "/photos/:id/update", to: "photos#update"

  delete "/photos/:id", to: "photos#destroy"

  resources :articles do
    resources :comments
  end
end
