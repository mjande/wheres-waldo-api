Rails.application.routes.draw do
  resources :scores
  resources :characters
  namespace :api do
    namespace :v1 do
      resources :photographs
    end
  end
end
