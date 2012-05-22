Videolibrary::Application.routes.draw do
  get "requests/new_last_movies",      :as => :new_last_movies
  post "requests/show_last_movies",    :as => :show_last_movies

  get "requests/new_genre_search",     :as => :new_genre_search
  post "requests/show_genre_search",   :as => :show_genre_search

  get "requests/new_involve_search",   :as => :new_involve_search
  post "requests/show_involve_search", :as => :show_involve_search

  resources :actors
  resources :countries
  resources :involves
  resources :movies
  resources :carriers
  resources :genres

  root :to => "movies#index"
end
