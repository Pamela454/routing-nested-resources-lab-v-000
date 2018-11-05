Rails.application.routes.draw do
  resources :artists do 
    , only: [:show, :index] do
    # nested resource for songs
    resources :songs, only: [:show, :index]
  end
end
