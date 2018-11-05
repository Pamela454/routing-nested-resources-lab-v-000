Rails.application.routes.draw do
  resources :authors, only: [:show] do
    # nested resource for songs
    resources :songs, only: [:show, :index]
  end
  resources :songs
end
