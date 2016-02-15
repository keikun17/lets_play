Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  resource :dashboard, only: "index"

  resources :users do
    member do
      patch 'update_games'
    end
  end

  post "invite_user", to: "invitations#create", as: :invite_user

  root "dashboard#index"
end
