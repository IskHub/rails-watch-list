Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, only: [:index, :create, :new, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :lists, only: [:destroy]
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
