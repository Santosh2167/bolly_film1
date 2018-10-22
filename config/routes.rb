Rails.application.routes.draw do
  # get 'movies/index'
  # get 'movies/show'
  # post 'movies/create'
  # get 'movies/new'
  # put 'movies/update'
  # patch 'movies/update'
  # get 'movies/edit'
  # delete 'movies/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "movies", to: "movies#index"
  post "movies", to: "movies#create"
  get "movies/new", to: "movies#new"
  get "movies/:id/edit", to: "movies#edit"
  get "movies/:id",to: "movies#show"
  put "movies/:id",to: "movies#update"
  patch "movies/:id",to: "movies#update"
  delete "movies/:id",to: "movies#destroy"


end
