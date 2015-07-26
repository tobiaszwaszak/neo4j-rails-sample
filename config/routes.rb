Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :internal do
      resources :users, only: [:index]
    end
  end
end
