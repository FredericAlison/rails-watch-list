Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: %i[new create show index] do
    resources :bookmarks, only: %i[new create]
    # movies do
    # get :title
  end
end
