Rails.application.routes.draw do

  root to: "static_pages#root"

    namespace :api, defaults: {format: :json} do
      resources :images, only: [:show, :index]
    end
end
