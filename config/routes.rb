Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'lists', to: 'lists#index'

  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'

  # get 'lists/:id', to: 'lists#show', as: :list

  resources :lists, only: %i[index new create show destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
